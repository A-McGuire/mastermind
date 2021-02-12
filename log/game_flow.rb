require './log/menu'
require './log/code_generator'
require './log/turn'
require './log/evaluator'

class GameFlow

  attr_reader :secret_code
  def initialize(secret_code)
    @secret_code = secret_code
  end

  def test_secret_code
    p @secret_code
  end

  def game_intro
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,"
    puts "(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    puts "What's your guess?"
  end



  def game_runner
    while evaluator.has_won? == false || turn.user_input == "q"
      Turn.new
    end
  end

  # def game_end
  #   end_credits if turn.has_won == true
  # end

#   def end_credits
#     # puts "Congratulations! You guessed the sequence '#{code}' in #{num_guesses}"
#     # puts "guesses over #{time} minutes"
#     # puts "#{time_seconds} seconds."
#
#     "Do you want to (p)lay again or (q)uit?"
#     end_credits_input = gets.chomp
#     if instructions_input == "p"
#       puts "Play Game"
#     elsif instructions_input == "q"
#       puts "Goodbye"
#       exit
#     else
#       puts "Invalid input!"
#   end
# end






# run code gen method
# "I have generated a beginner sequence with four elements made up of: (r)ed,
# (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
# What's your guess?"
# until q or cheat or win condition is met
# get user input gets.chomp
# user input compare to code
# check if user input has any matching colors
  # check if user input is in correct place
    # w/ correct color checking individual pegs
      #has_won? - boolean if true => end_game
# print feedback method - query
 # print feedback "'RRGB' has 3 of the correct elements with 2 in the correct positions. You've taken 1 guess"
# add to guess counter
# user input gets.chomp restarts loop

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
