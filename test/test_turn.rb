require 'minitest/autorun'
require 'minitest/pride'
require './log/evaluator'
require './log/game_flow'
require './log/module_format'

class TurnTest < Minitest::Test
  def test_it_exists
    code = CodeGenerator.new
    game = GameFlow.new(code.secret_code)
    @turn = Turn.new(@secret_code)

    assert_instance_of Turn, @turn
  end
end
