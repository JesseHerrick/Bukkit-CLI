require 'open-uri'
require 'json'

module Bukkit
	def self.install
		opt3 = ARGV[2]
		if opt3.nil?
			abort("")

		plugins_api = JSON.parse(open("http://api.bukget.org/3/plugins/bukkit/#{opt3}").read)
		puts plugins_api[""][1]
	end
end