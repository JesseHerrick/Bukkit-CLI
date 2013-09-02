module Bukkit
	def self.start
		puts "Make sure that you're in your server's root directory."
		system 'java -jar craftbukkit.jar'
	end
end