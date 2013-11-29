require 'test/unit'
require 'bukkit'

class TestDownload < Test::Unit::TestCase
	def test_download
		Bukkit::Server.download("http://www.jessegrant.net/humans.txt")
		assert_equal(true, File.exists?("humans.txt"))
		FileUtils.rm("humans.txt")
	end
end