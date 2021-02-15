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
      puts "You lose ;)"
      exit
    elsif input == "c" #refactor cheat
      p @secret_code.join.upcase
    end
    @turn_input = input.split("")
  end
end
