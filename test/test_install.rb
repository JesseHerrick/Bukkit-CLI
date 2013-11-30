require 'test/unit'
require 'bukkit'

class TestInstall < Test::Unit::TestCase
	def test_install
		Dir.pwd.red
		plugin = Bukkit::Plugin.new("WorldEdit")
		
		Dir.chdir("my-awesome-server")
		puts Dir.getwd
		plugin.install
	end
end