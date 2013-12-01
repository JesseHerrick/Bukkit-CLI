module Bukkit
	class Server
		# Start the server.
		def self.start
			puts "Starting your CraftBukkit server.".green
			system 'java -jar craftbukkit.jar'
		end
	end
end
