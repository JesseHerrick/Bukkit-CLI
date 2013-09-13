module Bukkit
	def self.update(build)
		# Get build url.
		case build
		when "rb"
			# Download the Latest Recommended Build
			say "Downloading Recommended Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit.jar")
		when "beta"
			# Download the Latest Beta Build
			say "Downloading Beta Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-beta.jar")
		when "dev"
			# Download the Latest Developer Build
			say "Downloading Developer Build... (this may take a while)"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-dev.jar")
		end
	end
end