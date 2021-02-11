require './log/game_flow'
class Menu
  def intro
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def receive_input
    @input = gets.chomp
    menu_options
  end

  def menu_options
    if @input == "p"
      puts "Play Game"
    elsif @input == "i"
      puts "instructions"
    elsif @input == "q"
      puts "quit"
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
