require 'tty'


class CommandLineInterface


  def welcome
    font = TTY::Font.new(:doom)
    puts font.write("Welcome to GameNerd!")
    system "say Welcome to Game Nerd"

    puts(

    "
                                      ---------------------------------------------------------
                                      |      Let's find some new games to play! 🙋🏽‍♀️🙋🏻‍♀️          |
                                      |          1. Help - Instructions                       |
                                      |          2. Create a new user                         |
                                      |          3. Search for a game by name                 |
                                      |          4. Look up a games:                          |
                                      |           a. esrb synopsis                            |
                                      |           b. rating                                   |
                                      |           c. release date                             |
                                      |          5. Get a random game recommendation          |
                                      |          6. Exit                                      |
                                      ---------------------------------------------------------
                                ")
                              end

  def menu_option_select
    welcome
    loop do
    puts "\n \n \n Please select a menu option and hit enter... 🎮
----------------------------------------------------------------"
      input = gets.chomp.downcase

      case input
      when "1"
        help_option #done(maybe add more instruction)

      when "2"
        create_new_user

      when "3"
        game_search_name

      when "4a"
        game_search_esrb #double-check

      when "4b"
        game_search_rating #double-check

      when "4c"
        game_search_release

      when "5"
        random_game_option #done

      when "6"
        exit_option #done
        break
      else
        puts "Maybe you meant a different number?"
      end
    end
  end

  def help_option
   puts "Help - Instructions:
                       -------------------------------------------------------------------------------------------
                               -  Type your desired numerical selection based off of one of the menu options.
                                               1. Help - Instructions
                                               2. Create a new user
                                               3. Search for a game by name
                                               4. Look up a games:
                                                 a. ersb synopsis
                                                 b. rating
                                                 c. release date
                                               5. Get a random game recommendation
                                               6. Exit
                                   Ex.         You: 2
                                       => Search by name:
                                               You: Mario Kart
                                       => Here's some games with that name:
                                               Mario Kart
                                               ...
                               -  You may make multiple selections until you are finished.
                               -  If you're having issues exiting this app, please press '5'.
                               -  You may reference README.md for further information.
                                                       Level up! 🍄
                       ------------------------------------------------------------------------------------------
   "
  end

  def create_new_user
    puts "Please create a username:
-------------------------------------------------------"
    input = gets.chomp
    un = "#{User.new_user("#{input}")}"
    puts "
    New username #{input} created!"
  end

  def game_search_name
      puts "Search by name:
-------------------------------------------------------"
      input = gets.chomp
      puts "loading ▍▍▍▍▍▍▍▍▍▍▍
      \n"
      sleep 1
      puts "Here's some games with that name:\n#{Game.search_name("#{input}")}
-------------------------------------------------------
      \n"
  end

  def game_search_esrb
    puts "Search by name:
-------------------------------------------------------"
    input = gets.chomp
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 1
    puts "Wow, this is a lot of info! \n#{Game.search_esrb_synopsis("#{input}")}
-------------------------------------------------------
    \n"
  end

  def game_search_rating
    puts "Search by name:
-------------------------------------------------------"
    input = gets.chomp.titlecase
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 1
    puts "Wow, I can't believe #{input} got a rating of: #{Game.search_rating("#{input}")}"
  end

  def game_search_release
    puts "Search by name:
-------------------------------------------------------"
    input = gets.chomp.titlecase
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 1
    puts "Looks like... #{input} came out: #{Game.search_release_date("#{input}")}"
  end


  def random_game_option
   puts "Why don't you check out: #{Game.random_game_option}"
  end


  def exit_option
    font = TTY::Font.new(:doom)
    puts font.write("Game Over!")

  end



end
