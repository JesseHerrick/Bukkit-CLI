module Bukkit
	def self.start
		abort "ERROR: You aren't in your server's root directory." if Bukkit::Check.root? == false
		system 'java -jar craftbukkit.jar'
	end
end