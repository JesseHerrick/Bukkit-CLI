require 'rest-client'
require 'fileutils'

module Bukkit
  class Server
    # Download a file from a URI.
    def self.download(uri, options = {}) # Options: { :filename => "filename.ext" }
      # Get the filename. If it isn't defined, derive it from the URI.
      if options[:filename]
        filename = options[:filename]
      else
        filename = uri.split("\/").last
      end

      # Catch SIGINT if needed.
      trap("SIGINT") {
        puts "\nDownload failed.".red
        FileUtils.rm(filename) if File.exists? filename
        exit
      }

      # Give some friendly output.
      puts "Downloading: ".yellow + filename
      puts "       From: ".yellow + uri
      puts "(This may take a while depending on your internet connection.)".light_yellow

      # Download the file.
      data = RestClient.get(uri)
      File.open(filename, "wb") do |file|
        file.write(data)
      end
      # => filename.ext

      puts filename.light_green + " successfully downloaded.".green
    end
  end
end