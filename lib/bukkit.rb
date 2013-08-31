require 'bukkit/version.rb'
require 'bukkit/new.rb'

module Bukkit
	opt1 = ARGV[0]
	opt2 = ARGV[1]
	opt3 = ARGV[2]

	case opt1
	when "-v", "--version"
		puts Bukkit::VERSION
	when "new"
		Bukkit::new
	end
end
