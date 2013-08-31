require 'bukkit/version'
require 'bukkit/new'
require 'bukkit/start'

module Bukkit
	opt1 = ARGV[0]
	opt2 = ARGV[1]
	opt3 = ARGV[2]

# First arg control flow
	case opt1
	when "-v", "--version"
		puts Bukkit::VERSION
	when "new"
		Bukkit::new
	when "start"
		Bukkit::start
	end
end