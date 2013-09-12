require 'open-uri'
require 'json'
require 'launchy'

module Bukkit
	def self.website(plugin_name)
		begin
			plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{plugin_name}").read)
			website = plugins_api["website"]
			puts "Opening #{plugin_name}'s website in your default browser."
			Launchy.open(website)
		rescue OpenURI::HTTPError
			puts "  Plugin not found.\n  Make sure you have the name correct."
			Bukkit::Help.website
		end
	end
end
