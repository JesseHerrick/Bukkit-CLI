require 'curb'

module Bukkit
	class Server
		# Download a file from a URI.
		def self.download(uri, options = {}) # Options: { :filename => "filename.ext" }
			# Get the filename. If it isn't defined, derive it from the URI.
			if options[:filename]
				filename = options[:filename]
			else
				filename = uri.split("\/")[-1]
			end

			# Give some friendly output.
			puts "Downloading: ".yellow + filename
			puts "       From: ".yellow + uri

			# Download the file.
			data = Curl::Easy.perform(uri)
			data.perform
			File.open(filename, "wb") do |file|
				file.write(data.body_str)
			end
			# => filename.ext

			puts "#{filename} successfully downloaded!".green
		end
	end
end