module Bukkit
	class Server
		# Create a new server.
		def create(options = {}) # Options: { :build => :rb/:beta/:dev, :force => false/true }
			force = options[:force]

			# If the dir already exists, fail gracefully.
			if Dir.exists?(@name) && force == false
				puts "'#{@name}' already exists.".red

				names = %w{ minecraftyness mine-opolis mineville minetown bukkits-o-fun }
				abort "Try ".yellow + "`bukkit new #{names.sample}` ".light_yellow + "or".yellow + " `bukkit new #{@name} --force`".light_blue
			end

			# Let the dark side of the force flow through you...
			if force == true
				puts "Overwriting: ".light_red + "#{@name}/"
				FileUtils.rm_rf(@name)
			end

			# Create the server directory and cd into it.
			Dir.mkdir(@name)
			puts "     Create: ".green + "#{@name}/"
			Dir.chdir(@name)

			# Fail gracefully on control + C (SIGINT)
			trap("SIGINT") {
				FileUtils.rm_rf(@name)
				puts "#{@name} not created.".red
			}

			# Download build.
			Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")

			# Give some friendly output.
			puts "New server build at: ".blue + "#{Dir.pwd}/".light_blue
		end
	end
end