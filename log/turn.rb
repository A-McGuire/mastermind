require './log/evaluator'


class Turn

  attr_reader :turn_input

# def initialize(evaluator_instance)
#   @evaluator_instance = evaluator_instance
# end
  def user_input
    input = gets.chomp
    @turn_input = input.split("")
  end

  # def guess_hint
  #     puts "'#{@evaluator_instance.guess}' has #{@evaluator_instance.check_color} of the correct elements with"
  #     puts "#{@evaluator_instance.check_position} in the correct positions."
  # end
end


# evaluator.guess_hint
