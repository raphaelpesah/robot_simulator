gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'robot'

class RobotTest < Minitest::Test
	
	def test_it_has_a_name
		robot = Robot.new("Barnabé")
		assert_equal "Barnabé", robot.name
  	end

    def test_it_can_be_named_something_else
    robot = Robot.new("Joseph")
    assert_equal "Joseph", robot.name
  end

  def test_it_is_white_by_default
    robot = Robot.new("Margaret")
    assert_equal "white", robot.color
  end

  def test_it_knows_if_it_is_white
    robot = Robot.new("Elisabeth")
    assert robot.white?
  end

end