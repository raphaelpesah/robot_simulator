gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'

class RobotTest < Minitest::Test
	def test_something
		assert_equal 3, 1 + 2
    end

    def test_something_else
    	 assert_equal 1, nil - 1
    end

  def test_yet_another_thing
  end

end