# require './log/game_flow'
class Menu
  def intro
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def receive_input
    menu_options(gets.chomp)
  end

  def menu_options(input)
    if input == "p"
      puts "Play Game"
  game_branch
    elsif input == "i"

      puts "Hello, I am the Codemaker. I will create a secret code with four"
      puts  "colored 'pegs' (r)ed, (g)reen, (b)lue, and (y)ellow."
      puts  "Your task is to correctly guess my secret code. The pegs will be"
      puts  "placed in a specific order. Duplicate colors are allowed. I am a"
      puts  "generous Codemaker, thus I will provide feedback for your guesses:"
      puts  "If you correctly guess a color that is used in my code I will"
      puts  "tell you."
      puts  "If you correctly guess the color of a specific slot I will tell"
      puts  "you, however I will not tell you *which* slot is correct."
      puts  "Welcome to MASTERMIND. Good Luck."
      puts  "Would you like to (p)lay a game or will you (q)uit?"
   game_branch
      instructions_input = gets.chomp
      if instructions_input == "p"
        puts "Play Game"
      elsif instructions_input == "q"
        puts "Goodbye"
        exit
      else
        puts "Invalid input!"
      end
    elsif input == "q"
      puts "Goodbye"
      exit
    else
      puts "Invalid input!"
    end
  end
end


# include game_flow
# puts "Welcome to MASTERMIND"
#
# puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

# recieve player input gets.chomp
# play method - command
  # game.start_method  begins the game
# instructions method - query
  # returns instructions on how to play the game
# quit method - command   hard code 'exit' to close program

#rename to menu
