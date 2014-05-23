module Bukkit
  class Server
    # Download a new version of bukkit.
    def self.update(options = { :build => :rb }) # Options: { :build => :rb/:beta/:dev }
      Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")
    end

    # Download a new version of bukkit.
    def update(options = { :build => :rb }) # Options: { :build => :rb/:beta/:dev }
      Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")
    end
  end
end