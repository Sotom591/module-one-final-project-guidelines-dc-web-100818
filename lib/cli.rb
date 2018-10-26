require 'tty'


class CommandLineInterface


  def welcome
    font = TTY::Font.new(:doom)
    system "say Welcome to Game Nerd"
    puts font.write("Welcome to GameNerd!")
    puts(

    "
                                -------------------------------------------------------
                                |     Let's find some new games to play  🎮             |
                                |     1. Help - Instructions                          |
                                |     2. Search for a game by:                        |
                                |       a. name                                       |
                                |       b. ersb synopsis                                      |
                                |       c. rating                                     |
                                |       d. release date                                     |
                                |     3. Get a random game recommendation by platform |
                                |     4. Get a review of a game                       |
                                |     5. Exit                                         |
                                -------------------------------------------------------  ")
  end

  def menu_option_select
    welcome
    loop do
    puts "Please select a menu option and hit enter
-----------------------------------------"
      input = gets.chomp

      case input
      when "1"
        help_option #done(maybe add more instruction)

      when "2a"
        game_search_name #done

      when "2b"
        game_search_genre

      when "2c"
        game_search_rating

      when "2d"
        game_search_newest

      when "3"
        random_game_option

      when "4"
        game_review_option

      when "5"
        exit_option #done

        break
      else
        puts "Maybe you meant a different number."
      end
    end
  end

  def help_option
    puts "Help - Instructions:
    ~~~~~~~~~~~~~~~~~~~~~~
      Type your desired numerical options in the menu to make a selection.

      You may make multiple selections until you are finished.

      If you're having issues exiting this app, please press '5'.

      You may reference the README file for further information.

      Have fun! 🙋🏽‍♀️🙋🏻‍♀️
    ~~~~~~~~~~~~~~~~~~~~~~
    "
  end

  def game_search_name
      puts "search by name:"
      input = gets.chomp
      puts "loading ▍▍▍▍▍▍▍▍▍▍▍"
      puts "Here's a game with that name: #{GameAPI.search_name("#{input}")}"
  end

  def game_search_genre
      puts "#{GameAPI.game}"
  end

  def game_search_rating

  end

  def game_search_newest
      puts "This newest game available is #{Game.newest_game}"
  end


  def random_game_option
   puts "Why don't you check out #{GameAPI.random_game_option}?"
  end

  def game_review_option
    #4. Get a review of a game
  end

  def exit_option
   puts "Level up! 🍄"
  end



end
