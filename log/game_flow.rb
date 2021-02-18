require './log/module_format'
require './log/code_generator'
require './log/turn'
require './log/evaluator'

class GameFlow
  include Format

  attr_reader :secret_code
  def initialize(secret_code)
    @secret_code = secret_code
    @turn_counter = 0
  end

  def game_intro
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,"
    puts "(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    puts "What's your guess?"

    line_break
    game_runner
    end_game
  end

  def game_runner
      @starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
      
    while winner? == false
      @turn = Turn.new(@secret_code)
      @turn.user_input
      @turn_counter += 1
      @evaluator = Evaluator.new(@secret_code, @turn.turn_input, @turn_counter)
      @evaluator.guess_hint
    end
  end

  def winner?
    return false if defined?(@turn) == nil
    return true if @evaluator.has_won? == true
    false
  end

  def end_game
    return end_credits if @evaluator.has_won? == true
  end

  def end_credits
    @ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)

    calculate_time

    puts "Congratulations! You guessed the sequence '#{@evaluator.guess.join.upcase}' in #{@turn_counter}"
    puts "guesses over #{@minutes} minutes"
    puts "#{@seconds} seconds."

    line_break

    puts "Do you want to (p)lay again or (q)uit?"

    end_credits_input = gets.chomp

    if end_credits_input == "p" || end_credits_input == "play"
      code = CodeGenerator.new
      game = GameFlow.new(code.secret_code)
      game.game_intro
    elsif end_credits_input == "q" || end_credits_input == "quit"
      puts "Goodbye"
      exit
    else
      puts "Invalid input!"
      line_break
    end
  end

  def calculate_time
    elapsed = @ending - @starting
    @minutes = (elapsed/60).to_i
    @seconds = (elapsed % 60).round
  end
end
