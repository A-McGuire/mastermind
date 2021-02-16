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
    @input = gets.chomp
    if @input == "q" || @input == "quit"
      quit_game
    elsif @input == "c" || @input == "cheat"
      show_secret_code
    elsif @input.length == 4
      sanitize_input
    elsif @input.length > 4
      if_input_too_long
    elsif @input.length < 4
      if_input_too_short
    else
      invalid_input
    end
  end

  def quit_game
    puts "You lose ;)"
    line_break
    exit
  end

  def show_secret_code
    p @secret_code.join.upcase
    p "Cheater!"
    line_break
    user_input
  end

  def sanitize_input
    @turn_input = @input.split("")
    @turn_input.each do |peg|
      peg.downcase
    end
  end

  def if_input_too_long
    p "Too many characters"
    line_break
    user_input
  end

  def if_input_too_short
    p "Not enough characters"
    line_break
    user_input
  end

  def invalid_input
    "Invalid Input"
    line_break
    user_input
  end
end
