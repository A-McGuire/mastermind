require 'minitest/autorun'
require 'minitest/pride'
require './log/game_flow'
require './log/module_format'
require './log/code_generator'
require './log/turn'
require './log/evaluator'

class GameFlowTest < Minitest::Test
  def test_it_exists
    code = CodeGenerator.new
    game = GameFlow.new(code.secret_code)

    assert_instance_of GameFlow, game
  end
end
