# Orderly and Alphabetical Require Statements
require 'rubygems'
require 'colorize'
require 'open-uri'
require 'json'

require 'bukkit/create'
require 'bukkit/download'
require 'bukkit/install'
require 'bukkit/start'
require 'bukkit/update'
require 'bukkit/version'
require 'bukkit/website'

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