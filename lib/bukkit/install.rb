require 'open-uri'
require 'json'
require 'archive/zip'
require 'launchy'

module Bukkit
	class Install
		def self.normal(plugin, nowebsite = false)
			# Check if in root
			abort "ERROR: Not in server's root directory.\nTry `bukkit new my-awesome-server-name`." if Bukkit::Check.root? == false

			# BukGet API for Plugin Installs
			plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{plugin}").read)
			# Get Plugin's Website
			@@website = plugins_api["website"]
			# Get Plugin's Download Link
			download = plugins_api["versions"][0]["download"]
			# Get Plugin's Filename
			filename = plugins_api["versions"][0]["filename"]
			# Switch to plugins dir
			plugin = plugin.downcase
			Dir.chdir("plugins")
			puts "Downloading #{plugin} from #{@@website}..."
			# Download File from dev.bukkit.org
			Bukkit::download(filename, download)

			# Unzip if it's a zip
			if File.extname(filename) == ".zip"
				# Extract Zip Archive
				Archive::Zip.extract(filename, plugin) 
				Dir.chdir(plugin)
				jarfiles = Dir.glob("*.jar")
				# Move each jar file outside the folder.
				jarfiles.each do |jar|
					%x(mv #{jar} ../)
				end
				Dir.chdir("../")
				# Delete the extracted folder.
				%x(rm -rf #{plugin}/)
				# Delete the archive.
				%x(rm #{filename})

				puts "#{plugin.capitalize!} successfully installed!"

				if nowebsite == false
					website?
				end
			else
				if nowebsite == true
					abort
				else
					website?
				end
			end
		end

		def self.website?
			website_yn = agree "Would you like to visit it's website? (yes/no)"

			if website_yn == true
				puts "Launching website!"
				Launchy.open(@@website)
			end
		end
	end
end