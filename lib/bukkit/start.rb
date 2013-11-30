module Bukkit
	# Instance method to start the server.
	class Server
		def start
			dirname = Dir.pwd.split("\/").last

			if dirname == @name
				puts "Starting the server.".green
				system 'java -jar craftbukkit.jar'
			else
				abort "#{dirname} is not the name of a server.\nTry `bukkit new my-awesome-server`"
			end
		end
	end
end