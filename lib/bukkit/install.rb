require 'open-uri'
require 'json'
require 'zip'

module Bukkit
	def self.install
		opt2 = ARGV[1]
		if opt2.nil?
			abort("USAGE: bukkit install PLUGIN_NAME")
		end
		begin
			plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{opt2}").read)
			download = plugins_api["versions"][0]["download"]
			filename = plugins_api["versions"][0]["filename"]

			Dir.chdir("plugins")
			%x(curl -L #{download} > #{filename})
			if File.extname(filename) == ".zip"
				puts "Extract! Extract!!!"
			else
				puts "It's not a zip! It's installed!"
			end
		rescue Errno::ENOENT
			puts "  You aren't in a server's root directory.\n  'plugins' directory not found."
		rescue
			puts "  Plugin not found."
		end
	end
end