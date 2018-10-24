require 'pry'

class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  




  def average_rating
  rating = reviews.collect do |review|
      review.rating
    end
    rating.reduce(:+) / rating.length.to_f
  end

  def self.highest_rated
    this = self.all.collect do |game|
      binding.pry
       game.average_rating
    end
    highest_rating = this.sort!.last
    self.all.find do |games|
      games.average_rating == highest_rating
      binding.pry
    end
  end

end
