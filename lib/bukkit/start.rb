module Bukkit
	# Class method to start the server.
	def self.start
		puts "Starting the server.".green
		system 'java -jar craftbukkit.jar'
	end

	# Instance method to start the server.
	def start
		puts "Starting the server.".green
		system 'java -jar craftbukkit.jar'
	end
end