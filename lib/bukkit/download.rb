require 'open-uri'

module Bukkit
	def self.download(filename, uri)
		File.open("#{filename}", "wb") do |file|
			file.write open("#{uri}").read
		end
	end
end