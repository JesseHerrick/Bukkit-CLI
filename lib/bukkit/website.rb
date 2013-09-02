require 'open-uri'
require 'json'
require 'launchy'

module Bukkit
	$opt2 = ARGV[1].downcase
	plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{$opt2}").read)
	$website = plugins_api["website"]

	def self.website
		puts "  Opening #{$opt2}'s website in your default browser."
		Launchy.open($website)
	end

	def self.ask_website
		print "Would you like to visit the plugin's website? (y/n) "
		q2 = $stdin.gets.chomp
		case q2
		when "y", "yes"
			puts "  Opening #{$opt2}'s website in your default browser."
			Launchy.open($website)
		when "n", "no"
			abort("If you change your mind.\nRun the command 'bukkit website PLUGIN_NAME'.")
		else
			puts "'#{q2}' is not an option."
		end
	end
end