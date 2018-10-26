require 'json'

class GameQueue < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  # def add_game_to_queue(input)
  #   GameQueue.create(user: self, game: input)
  # end
end
