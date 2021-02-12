require './log/evaluator'

class Turn
  def user_input
    turn_input = gets.chomp
    evaluator(turn_input) 
  end

end
