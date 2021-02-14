require './log/evaluator'


class Turn

  attr_reader :turn_input
  def user_input
    input = gets.chomp
    @turn_input = input.split("")
  end
end
