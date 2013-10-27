module Bukkit
	# N2K: http://cbukk.it/craftbukkit.jar http://cbukk.it/craftbukkit-beta.jar http://cbukk.it/craftbukkit-dev.jar
	def self.new(build, dir, force = false)
		# Create a Folder for the Server
		if Dir.exists?(dir)
			# Error unless forced dir overwrite.
			abort "ERROR:".red + " Directory already exists. Try a different name." unless force == true

			# If it didn't abort, overwrite the dir because it was forced.
			FileUtils.rm_r("#{dir}/")
			Dir.mkdir(dir)
			Dir.chdir(dir)
		else
			Dir.mkdir(dir)
			Dir.chdir(dir)
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

		puts "Server built!".green
		puts "Dir: ".yellow + Dir.getwd

		# Start the Server
		Bukkit.start
	end
end