module Bukkit
	class Plugin
		def self.uninstall(name)
			# First check if in root dir.
			abort "You're not in a server's root directory!".red unless File.exists? "craftbukkit.jar"
			
			if Dir.exists?("plugins")
				# The plugins dir exists and is not empty.
				Dir.chdir("plugins")

				plugins = Dir.glob("*")
				delete = []

				# Case insensitively checks each file/dir for a match.
				plugins.each do |plugin|
					if /#{name}/i =~ plugin
						# Make the plugin name look the way the plugin dev wanted.
						name = plugin if File.ftype(plugin) == "directory"

						delete << plugin
					end
				end

				# Delete each matching file.
				if delete.empty?
					puts "No plugins found matching '#{name}'".yellow
				else
					delete.each do |file|
						if File.ftype(file) == "directory"
							file = "#{file}/"
						end

						FileUtils.rm_rf file
						puts file.light_red + " deleted".red
					end

					puts "#{name} has been successfully uninstalled.".green
				end
			else
				abort "You have no plugins to uninstall."
			end
		end
	end
end