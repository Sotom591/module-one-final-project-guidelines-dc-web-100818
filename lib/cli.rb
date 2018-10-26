require 'tty'


class CommandLineInterface


  def welcome
    font = TTY::Font.new(:doom)
    puts font.write("Welcome to GameNerd!")
    system "say Welcome to Game Nerd"

    puts(

    "
                                -------------------------------------------------------
                                      Let's find some new games to play! 🙋🏽‍♀️🙋🏻‍♀️
                                |     1. Help - Instructions                          |
                                      2. Search for a game by name
                                |     3. Look up a games:                             |
                                         a. ersb synopsis
                                |        b. rating                                    |
                                         c. release date
                                |     4. Get a random game recommendation             |
                                      5. Exit
                                -------------------------------------------------------

                                ")
  end

  def menu_option_select
    welcome
    loop do
    puts "\n \n \n Please select a menu option and hit enter
-------------------------------------------------------"
      input = gets.chomp.downcase

      case input
      when "1"
        help_option #done(maybe add more instruction)

      when "2"
        game_search_name #fix array

      when "3a"
        game_search_ersb #double-check

      when "3b"
        game_search_rating #double-check

      when "3c"
        game_search_release

      when "4"
        random_game_option #done

      when "5"
        exit_option #done

        break
      else
        puts "Maybe you meant a different number?"
      end
    end
  end

  def help_option
    puts "Help - Instructions:
-----------------------------------------------------------------------------
    -  Type your desired numerical options in the menu to make a selection.

    -  You may make multiple selections until you are finished.

    -  If you're having issues exiting this app, please press '5'.

    -  You may reference the README file for further information.

                            Level up! 🍄

-----------------------------------------------------------------------------
    "
  end

  def game_search_name
      puts "search by name: "
      input = gets.chomp
      puts "loading ▍▍▍▍▍▍▍▍▍▍▍
      \n"
      sleep 2
      puts "Here's some games with that name:\n#{GameAPI.search_name("#{input}")}"
  end

  def game_search_ersb
    puts "search by name: "
    input = gets.chomp
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 2
    puts "Wow, this is a lot of info! \n#{GameAPI.search_ersb_synopsis("#{input}")}"
  end

  def game_search_rating
    puts "search by name: "
    input = gets.chomp
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 2
    puts "Wow, I can't believe #{input} got a rating of: #{GameAPI.search_rating("#{input}")}"
  end

  def game_search_release
    puts "search by name: "
    input = gets.chomp
    puts "loading ▍▍▍▍▍▍▍▍▍▍▍
    \n"
    sleep 2
    puts "Looks like... #{input} came out: #{GameAPI.search_release_date("#{input}")}"
  end


  def random_game_option
   puts "Why don't you check out: #{GameAPI.random_game_option}"
  end

  def game_review_option
    #4. Get a review of a game
  end

  def exit_option
   puts "Game Over! 🎮"
  end



end
