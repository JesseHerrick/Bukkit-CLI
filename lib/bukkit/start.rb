module Bukkit
	class Server
		# Start the server.
		def self.start
			if File.exists?("craftbukkit.jar")
				puts "Starting your CraftBukkit server.".green
				system 'java -jar craftbukkit.jar'
			else
				abort "You're not in your server's root directory.".red
			end
		end
	end
end
