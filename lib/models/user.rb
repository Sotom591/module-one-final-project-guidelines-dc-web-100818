require 'json'

class User < ActiveRecord::Base
  has_many :gamequeues
  has_many :games, through: :gamequeues

  def self.new_user(name)
    self.create(name: name)
  end
  #
  # def add_game_to_queue(game)
  #   GameQueue.create(user: self, game: game)
  # end
  #


end
# binding.pry
# 0
