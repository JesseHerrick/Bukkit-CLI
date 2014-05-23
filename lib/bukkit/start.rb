module Bukkit
  class Server
    # Start the server.
    def self.start(options = {})
      if File.exists?("craftbukkit.jar")
        ram = options[:ram]

        puts "Starting your CraftBukkit server...".green
        if ram.nil? or ram == 0
          system 'java -jar craftbukkit.jar'
        else
          puts "Ram: ".blue + ram.to_s.light_blue
          system "java -Xmx#{ram}M -Xms#{ram}M -jar craftbukkit.jar"
        end
      else
        abort "You're not in your server's root directory.".red
      end
    end
  end
end
