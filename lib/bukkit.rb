# Orderly and Alphabetical requires h, i, n, s, v
require 'bukkit/help'
require 'bukkit/install'
require 'bukkit/new'
require 'bukkit/start'
require 'bukkit/version'

module Bukkit
	opt1 = ARGV[0]
	opt2 = ARGV[1]
	opt3 = ARGV[2]

# First arg control flow
	case opt1
	when "-v", "--version"
		puts Bukkit::VERSION
	when "-h", "--help"
		Bukkit::help
	when "new"
		Bukkit::new
	when "start"
		Bukkit::start
	when "install"
		Bukkit::install
	else
		puts "'#{opt1}' is not a command."
	end
end