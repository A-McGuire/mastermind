require 'minitest/autorun'
require 'minitest/pride'
require './log/menu'

class MenuTest < Minitest::Test
  def test_it_exists
    menu = Menu.new
    assert_instance_of Menu, menu
  end
end
