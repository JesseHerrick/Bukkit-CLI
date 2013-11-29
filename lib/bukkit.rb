# Orderly and Alphabetical Require Statements
require 'rubygems'

require 'bukkit/check'
require 'bukkit/download'
require 'bukkit/install'
require 'bukkit/new'
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
			@name = name
		end 
	end
end