module Bukkit
	class Plugin
		def self.uninstall(name)
			abort "You're not in a server's root directory!".red unless File.exists? "craftbukkit.jar"
			
			if Dir.exists?("plugins")
				Dir.chdir("plugins")

				plugins = Dir.glob("*")
				delete = []

				# Case insensitively checks each file/dir for a match.
				plugins.each do |plugin|
					if /#{name}/i =~ plugin
						delete << plugin
					end
				end
			else
				abort "You have no plugins to uninstall."
			end
		end
	end
end