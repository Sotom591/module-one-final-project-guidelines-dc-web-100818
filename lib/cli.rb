require 'tty'


class CommandLineInterface


  def welcome
    font = TTY::Font.new(:doom)
    system "say Welcome to Game Nerd"
    puts font.write("Welcome to GameNerd!")
    puts(
    "
    --------------------------------
    Let's find some new games to play!

    1. Help - Instructions
    2. Search for a game by:
      a. name
      b. platform
      c. rating
      d. newest
    3. Get a random game recommendation by platform
    4. Get a review of a game
    5. Exit
    --------------------------------
    ")
  end

  def menu_option_select
welcome
    loop do
    puts "Please select a menu option and hit enter
-----------------------------------------"
    input = gets.chomp

      case input
      when "1"
        help_option
      when "2"
        game_search_option
      when "3"
        random_game_option
      when "4"
        game_review_option
      when "5"
        exit_option
        break
      else
        puts "Maybe you meant a different number."
      end
    end
  end


  def exit_option
   puts "Level up!"
  end


  def help_option
    puts "Help - Instructions:
    ~~~~~~~~~~~~~~~~~~~~~~
  add after marissa finishes the outline
    ~~~~~~~~~~~~~~~~~~~~~~


    "
  end

  def number_two
  #2. Search for a game by:
    #a. name
    #b. platform
    #c. rating
    #d. newest
  end

  def number_three
   #3. Get a random game recommendation by platform
  end

  def number_four
    #4. Get a review of a game
  end


end
