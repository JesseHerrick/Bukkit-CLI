# encoding: UTF-8

require File.dirname(__FILE__) + '/../../../../../../spec_helper'
require File.dirname(__FILE__) + '/../fixtures/classes'
require 'archive/support/zlib'
require 'archive/zip/codec/store'
require 'archive/support/binary_stringio'

describe "Archive::Zip::Codec::Store::Compress#data_descriptor" do
  it "is an instance of Archive::Zip::DataDescriptor" do
    test_data = StoreSpecs.test_data
    compressed_data = BinaryStringIO.new
    closed_compressor = Archive::Zip::Codec::Store::Compress.open(
      compressed_data
    ) do |compressor|
      compressor.write(test_data)
      compressor.flush
      compressor.data_descriptor.class.should == Archive::Zip::DataDescriptor
      compressor
    end
    closed_compressor.data_descriptor.class.should ==
      Archive::Zip::DataDescriptor
  end

  it "has a crc32 attribute containing the CRC32 checksum" do
    test_data = StoreSpecs.test_data
    compressed_data = BinaryStringIO.new
    closed_compressor = Archive::Zip::Codec::Store::Compress.open(
      compressed_data
    ) do |compressor|
      compressor.write(test_data)
      compressor.flush
      compressor.data_descriptor.crc32.should == Zlib.crc32(test_data)
      compressor
    end
    closed_compressor.data_descriptor.crc32.should == Zlib.crc32(test_data)
  end

  it "has a compressed_size attribute containing the size of the compressed data" do
    test_data = StoreSpecs.test_data
    compressed_data = BinaryStringIO.new
    closed_compressor = Archive::Zip::Codec::Store::Compress.open(
      compressed_data
    ) do |compressor|
      compressor.write(test_data)
      compressor.flush
      compressor.data_descriptor.compressed_size.should ==
        compressed_data.string.size
      compressor
    end
    closed_compressor.data_descriptor.compressed_size.should ==
      compressed_data.string.size
  end

  it "has an uncompressed_size attribute containing the size of the input data" do
    test_data = StoreSpecs.test_data
    compressed_data = BinaryStringIO.new
    closed_compressor = Archive::Zip::Codec::Store::Compress.open(
      compressed_data
    ) do |compressor|
      compressor.write(test_data)
      compressor.flush
      compressor.data_descriptor.uncompressed_size.should == test_data.size
      compressor
    end
    closed_compressor.data_descriptor.uncompressed_size.should == test_data.size
  end
end
