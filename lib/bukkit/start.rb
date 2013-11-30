module Bukkit
	# Instance method to start the server.
	class Server
		def start
			puts "Starting your CraftBukkit server.".green
			system 'java -jar craftbukkit.jar'
		end
	end
end