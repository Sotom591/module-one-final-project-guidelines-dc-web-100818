require 'json'

class User < ActiveRecord::Base
  has_many :gamequeues
  has_many :games, through: :gamequeues

  def self.new_user(input)
    self.create(name: input)
  end
  
  def add_game_to_queue(input)
    GameQueue.create(user: self, game: input)
  end



end
