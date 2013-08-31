require 'rubygems'
require 'open-uri'
require 'json'

module Bukkit
	def self.new
		dl_api_uri = open("http://dl.bukkit.org/api/1.0/downloads/channels/?_accept=application%2Fjson").read
		dl_api = JSON.parse(dl_api_uri)
	end
end