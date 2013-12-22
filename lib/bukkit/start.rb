module Bukkit
	class Server
		# Start the server.
		def self.start(options = {})
			if File.exists?("craftbukkit.jar")
				ram = options[:ram]

				puts "Starting your CraftBukkit server...".green
				if ram.nil?
					system 'java -jar craftbukkit.jar'
				else
					system 'java -Xmx#{ram}M -Xms#{ram}M -jar craftbukkit.jar'
				end
			else
				abort "You're not in your server's root directory.".red
			end
		end
	end
end
