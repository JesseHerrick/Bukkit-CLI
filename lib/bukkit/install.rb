require 'open-uri'
require 'json'

module Bukkit
	def self.install
		opt2 = ARGV[1]
#		if opt3.nil?
#			abort("USAGE: bukkit install PLUGIN_NAME") 
#		else
#			nil
#		end

		plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{opt2}").read)
		download = plugins_api["versions"][0]["download"]
		filename = plugins_api["versions"][0]["filename"]

		puts download
	end
end