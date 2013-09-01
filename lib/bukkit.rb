# Orderly and Alphabetical requires h, i, n, s, v
require 'rubygems'

require 'bukkit/help'
require 'bukkit/install'
require 'bukkit/new'
require 'bukkit/start'
require 'bukkit/version'

module Bukkit
	opt1 = ARGV[0]

# First arg control flow
	case opt1
	when "-v", "--version", "version"
		puts Bukkit::VERSION
	when "-h", "--help", "help"
		Bukkit::help
	when "new"
		Bukkit::new
	when "start"
		Bukkit::start
	when "install"
		Bukkit::install
	else
		if opt1.nil?
			puts "You didn't enter a command.\n"
			Bukkit::help
		else
			puts "'#{opt1}' is not a command."
		end
	end
end