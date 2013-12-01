module Bukkit
	class Server
		# Start the server.
		def self.start
			if File.exists?("craftbukkit.jar")
				abort "You're not in your server's root directory.".red
			else
				puts "Starting your CraftBukkit server.".green
				system 'java -jar craftbukkit.jar'
			end
		end
	end
end
