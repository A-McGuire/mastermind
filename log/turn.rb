require './log/evaluator'


class Turn
  def user_input
    turn_input = gets.chomp
    evaluator = Evaluator.new(turn_input.to_s.split(""))
    evaluator.has_won?
    evaluator.check_color
    evaluator.position
    evaluator.guess_hint
  end
end
