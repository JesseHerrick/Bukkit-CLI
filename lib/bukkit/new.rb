module Bukkit
	def self.new
		puts "  Do want the recommended build, beta build, or dev build?"
		print "  rb, beta, dev? "
		q1 = $stdin.gets.chomp

		case q1
		when "rb", "recommended", "r"
			puts "Downloading CraftBukkit Recommended build...\n"
			%x(curl -L http://cbukk.it/craftbukkit.jar > craftbukkit.jar)
			puts "\nSuccessfully downloaded Recommended build."
			Bukkit::start
		when "beta", "b"
			puts "Downloading CraftBukkit Beta build...\n"
			%x(curl -L http://cbukk.it/craftbukkit-beta.jar)
			puts "\nSuccessfully downloaded Beta build."
			Bukkit::start
		when "dev", "development", "d"
			puts "Downloading CraftBukkit Development build...\n"
			%x(curl -L http://cbukk.it/craftbukkit-dev.jar > craftbukkit.jar)
			puts "\nSuccessfully downloaded Development build."
			Bukkit::start
		else
			puts "  \"#{q1}\" is not an option."
		end
	end
end