require './log/game_flow'
require './log/turn'

class Evaluator

  def initialize(secret_code, guess)
    @secret_code = secret_code
    @guess = guess
  end

  def guess
    @guess
  end

  def has_won?
      guess == @secret_code
  end

  def check_color #todo change big_guess to anything else
    big_guess = @secret_code - guess
    @secret_code.uniq.length - big_guess.uniq.length
  end

  def check_position
    pairs = @secret_code.zip(guess)

    pairs.count do |pair|
      pair[0] == pair[1]
    end
  end

  def guess_hint # todo format output to caps string
      # @game_instance.test_secret_code
      puts "'#{guess}' has #{check_color} of the correct elements with"
      puts "#{check_position} in the correct positions."
  end
end
