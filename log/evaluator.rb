require './log/game_flow'
require './log/turn'

class Evaluator

  def initialize(secret_code, guess, turn_counter)
    @secret_code = secret_code
    @guess = guess
    @turn_counter = turn_counter
  end

  def guess
    @guess
  end

  def has_won?
      guess == @secret_code
  end

  def check_color
    missing_colors = @secret_code - guess
    @secret_code.uniq.length - missing_colors.uniq.length
  end

  def check_position
    pairs = @secret_code.zip(guess)

    pairs.count do |pair|
      pair[0] == pair[1]
    end
  end

  def guess_hint
    if guess == ['c'] # todo refactor cheater
      puts "Cheater!"
    elsif @turn_counter == 1
      puts "'#{guess.join.upcase}' has #{check_color} of the correct elements with"
      puts "#{check_position} in the correct positions."
      puts "You've taken #{@turn_counter} guess"
    else
      puts "'#{guess.join.upcase}' has #{check_color} of the correct elements with"
      puts "#{check_position} in the correct positions."
      puts "You've taken #{@turn_counter} guesses"
    end
  end
end
