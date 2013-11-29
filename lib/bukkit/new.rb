module Bukkit
	class Server
		# Create a new server.
		def create(options) # Options: { :build => :rb/:beta/:dev, :force => false/true, :name => "ServerName" }
			name = options[:name]
			build = options[:build]
			force = options[:force]


			# Create the server directory.
			FileUtils.mkdir(name)
			puts "CREATE ".green + "#{name}/"
		end
	end
end