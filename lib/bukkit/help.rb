module Bukkit
	class Help

		# All Help Commands

		def self.all
			puts "Usage: bukkit COMMAND [OPTIONS]"
			puts ""
			puts "COMMANDS:"
			
			new
			start
			install
			website
			update
			help
			version
		end

		# Individual Help Commands

		def self.new
			puts "    USAGE: bukkit new my-awesome-server-name"
			puts "        Creates a new server."
		end
		def self.start
			puts "    USAGE: bukkit start"
			puts "        Starts up your server. Must be run in the server's root directory."
		end
		def self.install
			puts "    USAGE: bukkit install pluginname"
			puts "        Installs a new plugin. As long as it is on http://dev.bukkit.org."
		end
		def self.website
			puts "    USAGE: bukkit website pluginname"
			puts "        Opens the website of a plugin."
		end
		def self.update
			puts "    USAGE: bukkit update"
			puts "        Get's latest version of CraftBukkit."
		end
		def self.help
			puts "    USAGE: bukkit [-[-h]elp]"
			puts "        Displays help for commands."
		end
		def self.version
			puts "    USAGE: bukkit [-[-v]ersion]"
			puts "        Gives current Bukkit CLI version"
		end
	end
end