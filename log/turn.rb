require './log/evaluator'
require './log/game_flow'
require './log/module_format'

class Turn
  include Format

  attr_reader :turn_input

  def initialize(secret_code)
    @secret_code = secret_code
  end

  def user_input
    input = gets.chomp
    if input == "q" || input == "quit"
      puts "You lose ;)"
      line_break
      exit
    elsif input == "c" || input == "cheat"
      p @secret_code.join.upcase
      p "Cheater!"
      line_break
      user_input
    elsif input.length == 4
      @turn_input = input.split("")
      @turn_input.each do |peg|
        peg.downcase
      end
    elsif input.length > 4
      p "Too many characters"
      line_break
      user_input
    elsif input.length < 4
      p "Not enough characters"
      line_break
      user_input
    else
      "Invalid Input"
      line_break
      user_input
    end
  end
end
