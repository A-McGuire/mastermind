require './log/game_flow'
require './log/turn'

class Evaluator

  def initialize(game_instance, guess) #todo use secret code as arg instead of game class
    @game_instance = game_instance
    @guess = guess
  end

  def guess
    @guess
  end

  def has_won?
      guess == @game_instance.secret_code # todo refactor with helper methods
  end

  def check_color #todo fix logic
    big_guess = @game_instance.secret_code - guess
    @game_instance.secret_code.uniq.length - big_guess.uniq.length
  end

  def check_position
    pairs = @game_instance.secret_code.zip(guess)

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
