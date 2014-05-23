require 'open-uri'
require 'json'
require 'archive/zip'

module Bukkit
  class Plugin
    # Install a new plugin.
    def install
      # Get server's download link.
      @download_url = @plugin_api["versions"][0]["download"]
      @filename = @plugin_api["versions"][0]["filename"]

      # Fail... gracefully, if craftbukkit.jar does not exist.
      abort "You're not in a server's root directory!".red unless File.exists? "craftbukkit.jar"

      # Go into plugins and download the plugin.
      Dir.chdir("plugins")
      Bukkit::Server.download(@download_url, :filename => @filename)

      file_ext = File.extname(@filename)

      # Unzip if it's a zip
      case file_ext
      when ".zip"
        # Extract Zip Archive
        Archive::Zip.extract(@filename, @name)
        Dir.chdir(@name)
        jarfiles = Dir.glob("*.jar")
        # Move each jar file outside the folder.
        jarfiles.each do |jar|
          FileUtils.mv(jar, "../")
        end
        puts " Unarchived: ".yellow + @filename

        Dir.chdir("../")
        # Delete the extracted folder.
        FileUtils.rm_rf("#{@name}/")
        # Delete the archive.
        FileUtils.rm_rf(@filename)
      when ".jar"
        nil
      else
        abort "Something weird happened...\nThe file extension is #{file_ext}, not '.zip' or '.jar'."
      end
      puts "  Installed: ".light_green + @name
      puts @name.light_green + " successfully installed!".green
    end
  end
end