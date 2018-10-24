class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews

  def list_of_genre
    self.games.collect { |game| game.genre }
  end






end
