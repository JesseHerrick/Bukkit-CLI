module Bukkit
	class Server
		# Create a new server.
		def create(options) # Options: { :build => :rb/:beta/:dev, :force => false/true, :name => "ServerName" }
			build = options[:build]
			force = options[:force]

			# Let the dark side of the force flow through you...
			if force == true
				puts "Overwriting: ".light_red + "#{@name}/"
				FileUtils.rm_rf(@name)
			end

			# Create the server directory and cd into it.
			FileUtils.mkdir(@name)
			puts "     Create: ".green + "#{@name}/"
			FileUtils.cd(@name)

			# Download build.
			Bukkit::Server.download("http://dl.bukkit.org/latest-#{build}/craftbukkit.jar")
		end
	end
end