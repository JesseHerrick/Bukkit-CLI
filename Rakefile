#!/usr/bin/env ruby

$: << File.expand_path(File.dirname(__FILE__) + "/../lib")

# Lib Files
require 'bukkit/version'

# Gems
require "rubygems"
require "rake"
require "colorize"

# Tasks
desc "Get version"
task :version do
	version = Bukkit::VERSION_FULL.split
	puts "#{version[0].blue} #{version[1].yellow}"
end

desc "Default task."
task :default do
	`rake version`
	puts "Nothing to see here... move along.".green
	puts "Run".yellow + " `bukkit new my-awesome-server-name` to start a new server."
end

desc "Build gem."
task :build do
	puts "Starting gem build...".yellow
	puts "          Building...".yellow
	`gem build bukkit.gemspec`

	version = Bukkit::VERSION
	puts "Bukkit-CLI successfully built! ".green + "Gem ".blue + "v" + version

	gem = Dir.glob("*.gem")[0]
	Dir.mkdir("gem") unless Dir.exists?("gem")
	FileUtils.mv(gem, "gem/")
	puts " Gem: ".red + "#{Dir.getwd}/gem/" + gem.yellow
end