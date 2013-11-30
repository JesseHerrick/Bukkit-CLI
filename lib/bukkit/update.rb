module Bukkit
	class Server
		def self.update(options = { :build => :rb }) # Options: { :build => :rb/:beta/:dev }
			Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")
		end

		def update(options = { :build => :rb }) # Options: { :build => :rb/:beta/:dev }
			Bukkit::Server.download("http://dl.bukkit.org/latest-#{options[:build].to_s}/craftbukkit.jar")
		end
	end
end