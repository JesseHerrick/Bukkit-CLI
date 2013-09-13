require 'open-uri'

module Bukkit
	def self.download(filename, uri)
		begin
			File.open("#{filename}", "wb") do |file|
				file.write open("#{uri}").read
			end
		rescue Errno::ENOENT
			abort "ERROR: No internet connection."
		end
	end
end