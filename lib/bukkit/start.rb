module Bukkit
	class Server
		# Start the server.
		def start
			puts "Starting your CraftBukkit server.".green
			system 'java -jar craftbukkit.jar'
		end
	end
end