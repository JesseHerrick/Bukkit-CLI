require 'test/unit'
require 'bukkit'

class TestCreate < Test::Unit::TestCase
	def test_create_rb
		server = Bukkit::Server.new("my-awesome-server")
		options = { :build => :rb, :force => true }
		server.create(options)

		def check_for_server
			Dir.chdir("my-awesome-server/") if Dir.exists?("my-awesome-server")
			true if File.exists?("craftbukkit.jar")
		end

		assert_equal(check_for_server, true)
		
		Dir.pwd.red
		Dir.chdir("../")
	end
end