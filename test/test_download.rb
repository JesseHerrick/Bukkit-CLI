require 'test/unit'
require 'bukkit'

class TestDownload < Test::Unit::TestCase
	def test_download
		expected = Bukkit::Server.download("http://www.jessegrant.net/humans.txt")
		assert_equal(expected, "humans.txt successfully downloaded!")
	end
end