module Bukkit
	class Server
		# Create a new server.
		def create(options = {}) # Options: { :build => :rb/:beta/:dev, :force => false/true }
			force = options[:force]

			# Let the dark side of the force flow through you...
			if force == true
				puts "Overwriting: ".light_red + "#{@name}/"
				FileUtils.rm_rf(@name)
			end

			# Create the server directory and cd into it.
			Dir.mkdir(@name)
			puts "     Create: ".green + "#{@name}/"
			Dir.chdir(@name)
			puts Dir.getwd

			# Download build.
			Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")
		end
	end
end