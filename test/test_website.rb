require 'test/unit'
require 'bukkit'

class TestWebsite < Test::Unit::TestCase
	def test_website
		plugin = Bukkit::Plugin.new("WorldEdit")
		expected = plugin.view_website
		assert_equal(expected, "http://dev.bukkit.org/bukkit-plugins/worldedit")
	end
end