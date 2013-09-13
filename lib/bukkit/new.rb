module Bukkit
	# N2K: http://cbukk.it/craftbukkit.jar http://cbukk.it/craftbukkit-beta.jar http://cbukk.it/craftbukkit-dev.jar
	def self.new(build, dir)
		# Create a Folder for the Server
		begin
			Dir.mkdir(dir)
			Dir.chdir(dir)
		rescue Errno::EEXIST
			abort("ERROR: Directory already exists. Try a different name.")
		end

		case build
		when "rb"
			# Download Recommended Build
			say "Downloading Recommended Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit.jar")
		when "beta"
			# Download Beta Build
			say "Downloading Beta Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-beta.jar")
		when "dev"
			# Download Developer Build
			say "Downloading Developer Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-dev.jar")
		end

		# Start the Server
		Bukkit.start
	end
end