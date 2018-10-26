require 'tty'


class CommandLineInterface


  def welcome
    font = TTY::Font.new(:doom)
    system "say Welcome to Game Nerd"
    puts font.write("Welcome to GameNerd!")
    puts(
    "
                              -------------------------------------------------------
                              |     Let's find some new games to play               |
                              |     1. Help - Instructions                          |
                              |     2. Search for a game by:                        |
                              |       a. name                                       |
                              |       b. genre                                      |
                              |       c. rating                                     |
                              |       d. newest                                     |
                              |     3. Get a random game recommendation by platform |
                              |     4. Get a review of a game                       |
                              |     5. Exit                                         |
                              -------------------------------------------------------




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
      when "2a"
        game_search_name
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
        exit_option
        break
      else
        puts "Maybe you meant a different number."
      end
    end
  end


  def exit_option
   puts "Goodbye!"
  end


  def help_option
    puts "


               Help - Instructions:
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    When is asks:
    'Please select a menu option and hit enter'
    put in a number from 1 - 5

    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    "
  end

  def game_search_newest
  #2. Search for a game by:
    #d. newest
    puts "

-----------------"
    Game.newest_game
    puts "-----------------

    "
  end

  def game_search_name
    input = ""
    puts "search by name: #{input}"
    input = gets.chomp
  end


  def random_game_option
   #3. Get a random game recommendation by platform
   Game.reviews
  end

  def game_review_option
    Game.all_reviews
  end


IGDB::API.games [1942,3344], {fields: "name,rating"}


end
