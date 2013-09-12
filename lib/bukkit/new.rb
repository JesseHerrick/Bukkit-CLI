module Bukkit
	def self.new
		create_folder
		puts "  Do want the recommended build, beta build, or dev build?"
		print "  rb, beta, dev? "
		q1 = $stdin.gets.chomp

		case q1
		when "rb", "recommended", "r"
			puts "Downloading CraftBukkit Recommended build... (this could take a minute)\n"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit.jar")
			puts "\nSuccessfully downloaded Recommended build."
			Bukkit::start
		when "beta", "b"
			puts "Downloading CraftBukkit Beta build... (this could take a minute)\n"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-beta.jar")
			puts "\nSuccessfully downloaded Beta build."
			Bukkit::start
		when "dev", "development", "d"
			puts "Downloading CraftBukkit Development build... (this could take a minute)\n"
			Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-dev.jar")
			puts "\nSuccessfully downloaded Development build."
			Bukkit::start
		else
			if q1.length > 0
				Bukkit::Help.new
				abort("  \"#{q1}\" is not an option.")
			else
				Bukkit::Help.new
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
		begin
			Dir.mkdir(opt2.to_s)
			Dir.chdir(opt2.to_s)
		rescue Errno::EEXIST
			abort("  Directory already exists. Try a different name.")
		end
	end
end