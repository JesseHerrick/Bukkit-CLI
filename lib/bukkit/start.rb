module Bukkit
	def self.start
		puts "Make sure that you're in your server's root directory."
		puts "If Java runtime is not present, run 'bukkit start' once Java is installed to complete the installation."
		system 'java -jar craftbukkit.jar'
	end
end