require 'tty'
require 'json'
require 'rest-client'


class CommandLineInterface


 def welcome
   font = TTY::Font.new(:doom)
   system 'say Welcome to Game Nerd'
   puts font.write('Welcome to GameNerd!')
 end

end
