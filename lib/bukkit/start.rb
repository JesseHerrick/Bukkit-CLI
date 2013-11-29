module Bukkit
	# Instance method to start the server.
	def start
		unless Dir.pwd.split("\/").last
		puts "Starting the server.".green
		system 'java -jar craftbukkit.jar'
	end
end