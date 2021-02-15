# require './log/menu' todo delete
require './log/code_generator'
require './log/turn'
require './log/evaluator'

class GameFlow

  attr_reader :secret_code
  def initialize(secret_code)
    @secret_code = secret_code
    @turn_counter = 0
  end

  def test_secret_code
    p @secret_code
  end

  def game_intro
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,"
    puts "(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    puts "What's your guess?"

    game_runner
    end_game
  end

  def winner?
    return false if defined?(@turn) == nil
    return true if @evaluator.has_won? == true
    false
  end

  def game_runner # todo implement game counter and time counter
    while winner? == false
      @turn = Turn.new(@secret_code)
      @turn.user_input
      @turn_counter += 1
      @evaluator = Evaluator.new(@secret_code, @turn.turn_input, @turn_counter)
      @evaluator.guess_hint
    end
  end

  def end_game
    return end_credits if @evaluator.has_won? == true
    menu.intro
    menu.receive_input
  end

  def end_credits
    puts "Congratulations! You guessed the sequence '#{@evaluator.guess.join.upcase}' in #{@turn_counter}"
    puts "guesses over (todo time) minutes"
    puts "(todo time) seconds."

    puts "Do you want to (p)lay again or (q)uit?"
    end_credits_input = gets.chomp
    if end_credits_input == "p"
      code = CodeGenerator.new
      game = GameFlow.new(code.secret_code)
      game.game_intro
    elsif end_credits_input == "q"
      puts "Goodbye"
      exit
    else
      puts "Invalid input!"
    end
  end
end



# EDGE CASES:
# "Guesses are case insensitive
# If it’s 'q' or 'quit' then exit the game
# If it’s 'c' or 'cheat' then print out the current secret code
# If it’s fewer than four letters, tell them it’s too short
# If it’s longer than four letters, tell them it’s too long
# If they guess the secret sequence, enter the end game flow below
# Otherwise give them feedback on the guess like this:"
#
# # starting = Time.now
# # time consuming operation
# ending = Time.now
# elapsed = ending - starting
# elapsed # => 10.822178

# starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# # time consuming operation
# ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
# elapsed = ending - starting
# elapsed # => 9.183449000120163 seconds
