module Bukkit
	def self.update
		begin
			puts "  Do want the recommended build, beta build, or dev build?"
			print "  rb, beta, dev? "
			q1 = $stdin.gets.chomp

			case q1
			when "rb", "recommended", "r"
				puts "Downloading CraftBukkit Recommended build... (this could take a minute)\n"
				Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit.jar")
				puts "\nSuccessfully updated."
			when "beta", "b"
				puts "Downloading CraftBukkit Beta build... (this could take a minute)\n"
				Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-beta.jar")
				puts "\nSuccessfully updated."
			when "dev", "development", "d"
				puts "Downloading CraftBukkit Development build... (this could take a minute)\n"
				Bukkit::download("craftbukkit.jar", "http://cbukk.it/craftbukkit-dev.jar")
				puts "\nSuccessfully updated."
			else
				if q1.length > 0
					abort("  \"#{q1}\" is not an option.")
				else
					abort("  You didn't enter an option.")
				end
			end
		rescue
			puts "Uh oh! Something failed. Please report what you were doing at the time of this bug, and any other info you have at: https://github.com/JesseHerrick/bukkit/issues/new"
		end
	end
end