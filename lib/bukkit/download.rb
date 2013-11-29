require 'curb'

module Bukkit
	class Server
		# Download a file from a URI.
		def self.download(uri, options = {})
			# Get the filename.
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

=begin
			if options[:filename]
				filename = options[:filename]
			else
				filename = uri.split("\/")[-1]
			end

			puts "Downloading #{filename} from: #{uri}"
			puts "This may take a while depending on your internet connection..."
			# Download the file.
			File.open("#{filename}", "wb") do |file|
				file.write open("#{uri}").read
			end
			# => filename
			puts "#{filename} successfully downloaded!"
=end
