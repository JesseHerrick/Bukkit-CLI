require 'test/unit'
require 'bukkit'

class TestCLINew < Test::Unit::TestCase
	def test_cli_new
		expected = `bukkit new my-awesome-server --rb`
		assert_equal(expected, "{:build=>:rb, :force=>false, :name=>\"my-awesome-server\"}\n")
	end

	def test_cli_new_no_name
		expected = `bukkit new --rb`
		assert_equal(expected, "")
	end
end