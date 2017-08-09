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
    assert robot.white?, "Elisabeth should be white but it isn't"
  end

  def test_it_does_not_have_to_be_white
    robot = Robot.new("Barbara", "purple")
    assert_equal "purple", robot.color
  end

  def test_it_knows_if_it_is_not_white
    robot = Robot.new("Roxane", "green")
    refute robot.white?, "Roxane thinks she's white but shee's green"
  end

  def test_unicorn_says_sparkly_stuff
    robot = Robot.new("Johnny")
    assert_equal "**;* Wonderful! **;*", robot.say("Wonderful!")
  end

  def test_unicorn_says_different_sparkly_stuff
    robot = Robot.new("Francis")
    assert_equal "**;* I don't like you very much. **;*", robot.say("I don't like you very much.")
  end


end