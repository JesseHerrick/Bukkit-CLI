require 'open-uri'
require 'json'
require 'launchy'

module Bukkit
   def self.website(plugin)
        begin
    	    plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{plugin}").read)
    	    website = plugins_api["website"]
            Launchy.open(website)
            sleep(1)
    	    puts "Opening the plugin's website in your default browser..."
    	rescue OpenURI::HTTPError
    	    puts "ERROR: Plugin not found.\nMake sure you have the name correct.\nTry `bukkit website --help`"
    	    Bukkit::Help.website
    	rescue
    	    puts "ERROR: Plugin name is undefined."
	   end
    end

    def self.url(plugin)
        plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{plugin}").read)
        website = plugins_api["website"]
        say "\n#{plugin}'s website URL is #{website}."
        puts ""
    end
end