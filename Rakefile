#!/usr/bin/env ruby

# Created by Jesse Herrick
# www.jessegrant.net
# jessegrantherrick@gmail.com

# Gems
require "rubygems"
require "rake"
require "colorize"
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "features --format pretty"
end

# Helpers
def test(filename)
    puts `ruby -I . test/test_#{filename}.rb`
end

# Tasks
desc "Default task."
task :default do
    puts `rake test`
    puts "Gem seems to be in tip top shape!".green
    puts "Run: ".yellow + "`bukkit --help` to list all commands."
end

desc "Build gem."
task :build do
    puts "Starting gem build...".yellow
    puts "          Building...".yellow
    `gem build bukkit.gemspec`

    puts "bukkit successfully built!".green
    puts "Gems in this directory: ".yellow
    Dir.glob("*.gem").each { |gem| puts "=> " + gem.yellow }
end

desc "Install the gem."
task :install do
    gem = Dir.glob("*.gem").last
    puts "Installing gem...".yellow
    puts "From: ".yellow + gem
    `gem install #{gem}`
    puts "Gem successfully installed!".green
end