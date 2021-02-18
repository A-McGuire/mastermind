require 'minitest/autorun'
require 'minitest/pride'
require './log/menu'
require './log/code_generator'
require './log/game_flow'
require './log/turn'
require './log/evaluator'

class EvaluatorTest < Minitest::Test
  def test_it_exists
    code = CodeGenerator.new
    game = GameFlow.new(code.secret_code)
    @turn = Turn.new(@secret_code)
    @evaluator = Evaluator.new(@secret_code, @turn.turn_input, @turn_counter)

    assert_instance_of Evaluator, @evaluator
  end
end
