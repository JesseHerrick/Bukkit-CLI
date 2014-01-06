# Orderly and Alphabetical Require Statements
require 'rubygems'
require 'colorize'
require 'open-uri'
require 'json'

# To require all files.
require 'bukkit/create.rb'
require 'bukkit/download.rb'
require 'bukkit/install.rb'
require 'bukkit/start.rb'
require 'bukkit/uninstall.rb'
require 'bukkit/update.rb'
require 'bukkit/version.rb'
require 'bukkit/website.rb'

module Bukkit
	class Server
		def initialize(name)
			@name = name
		end
	end

	class Plugin
		def initialize(name)
			@name = name.downcase
			@plugin_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{@name}").read)
		end 
	end
end