require 'open-uri'
require 'json'
require 'archive/zip'
require 'launchy'

module Bukkit
	def self.install
		$opt2 = ARGV[1].downcase
		abort("USAGE: bukkit install PLUGIN_NAME") if $opt2.nil?
		begin
			plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{$opt2}").read)
			website = plugins_api["website"]
			download = plugins_api["versions"][0]["download"]
			filename = plugins_api["versions"][0]["filename"]
			Dir.chdir("plugins")
			puts "Downloading #{$opt2} from #{website}..."
			Bukkit::download(filename, download)
			if File.extname(filename) == ".zip"
				# Extract Zip Archive
				Archive::Zip.extract(filename, $opt2) 
				Dir.chdir($opt2)
				jarfiles = Dir.glob("*.jar")
				# Move each jar file outside the folder.
				jarfiles.each do |jar|
					%x(mv #{jar} ../)
				end
				Dir.chdir("../")
				# Delete the extracted folder.
				%x(rm -rf #{$opt2}/)
				# Delete the archive.
				%x(rm #{filename})
				puts "Plugin successfully installed!"
				ask_website
			else
				puts "Plugin successfully installed!"
				ask_website
			end
		rescue Errno::ENOENT
			puts "  You aren't in a server's root directory.\n  'plugins' directory not found."
		rescue
			puts "  Plugin not found."
		end
	end
end

def ask_website
	if ARGV.include? "--website"
		Bukkit.website($opt2)
	elsif ARGV.include? "-w"
		Bukkit.website($opt2)
	end
end