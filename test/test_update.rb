require 'test/unit'
require 'bukkit'

class TestUpdate < Test::Unit::TestCase
	def test_update_rb
		Bukkit::Server.update(:build => :rb)
		expected = File.exists?("craftbukkit.jar")
		assert_equal(expected, true)
		# FileUtils.rm("craftbukkit.jar")
	end
end