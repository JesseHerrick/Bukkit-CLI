module Bukkit
	def self.new
		create_folder
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
			%x(curl -L http://cbukk.it/craftbukkit-beta.jar > craftbukkit.jar)
			puts "\nSuccessfully downloaded Beta build."
			Bukkit::start
		when "dev", "development", "d"
			puts "Downloading CraftBukkit Development build...\n"
			%x(curl -L http://cbukk.it/craftbukkit-dev.jar > craftbukkit.jar)
			puts "\nSuccessfully downloaded Development build."
			Bukkit::start
		else
			if q1.length > 0
				abort("  \"#{q1}\" is not an option.")
			else
				abort("  You didn't enter an option.")
			end
		end
	end
end

def create_folder
	opt2 = ARGV[1]
	if opt2.nil?
		abort("  Server name not specified.\n  USAGE: 'bukkit new SERVERNAME'")
	else
		Dir.mkdir(opt2.to_s)
		Dir.chdir(opt2.to_s)
	end
end