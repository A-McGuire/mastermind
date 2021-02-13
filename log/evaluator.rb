require './log/game_flow'


class Evaluator
  def initialize(guess)
    @guess = guess
    @colors_counter = 0
    @map_count = 0
  end

  def has_won?
    @guess == game.secret_code
  end

  def check_color
    big_guess = game.secret_code - @guess
    @colors_counter = game.secret_code.length - big_guess.length
  end

  def check_position
    pairs = game.secret_code.zip(guess)

    @map_count = pairs.count do |pair|
      pair[0] == pair[1]
    end
  end

  def guess_hint
    puts "'#{@guess}' has #{@colors_counter} of the correct elements with"
    puts "#{@map_count} in the correct positions."
  end
end
