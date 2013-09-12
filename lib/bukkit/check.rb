module Bukkit
	class Check
		def self.root?
			if File.exists? "craftbukkit.jar"
				true
			else
				false
			end
		end
	end
end