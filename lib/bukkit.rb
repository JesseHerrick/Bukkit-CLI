# Orderly and Alphabetical Require Statements
require 'rubygems'

require 'bukkit/download'
require 'bukkit/help'
require 'bukkit/install'
require 'bukkit/new'
require 'bukkit/start'
require 'bukkit/update'
require 'bukkit/version'
require 'bukkit/website'

module Bukkit
	opt1 = ARGV[0]

# First arg control flow
	case opt1
	when "-v", "--version", "version", "v"
		puts Bukkit::VERSION_FULL
	when "-h", "--help", "help", "h"
		Bukkit::Help.all
	when "new"
		Bukkit::new
	when "start"
		Bukkit::start
	when "install"
		Bukkit::install
	when "website"
		Bukkit::website(ARGV[1].downcase)
	when "update"
		Bukkit::update
	else
		if opt1.nil?
			puts "You didn't enter a command.\n"
			Bukkit::Help.all
		else
			puts "'#{opt1}' is not a command."
			puts "Run 'bukkit --help' for a list of commands."
			Bukkit::Help.all
		end
	end
end
