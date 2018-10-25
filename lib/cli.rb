require 'pry'
require 'tty'
require 'json'
require 'rest-client'


class CommandLineInterface


 def welcome
   font = TTY::Font.new(:doom)
   system 'say Welcome to Game Nerd'
   puts font.write('Welcome to GameNerd!')
   puts "-------------------------
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
   "
  end

  def number_one
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
