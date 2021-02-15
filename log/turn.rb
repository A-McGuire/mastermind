require './log/evaluator'
require './log/game_flow'

class Turn

  attr_reader :turn_input

  def initialize(secret_code)
    @secret_code = secret_code
  end

  def user_input
    input = gets.chomp
    if input == "q"
      puts "Goodbye :)"
      exit
    end
    @turn_input = input.split("")
  end
end
