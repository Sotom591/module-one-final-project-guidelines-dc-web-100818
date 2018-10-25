require 'pry'
require 'json'

class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews


  def self.newest_game
     all_dates = self.all.collect do |game|
       game.date
     end
     newest = all_dates.sort[-1]
     self.all.find do |game|
       game.date == newest
     end
   end


  def average_rating
  rating = reviews.collect do |review|
      review.rating
    end
    rating.reduce(:+) / rating.length.to_f
  end

  def self.highest_rated
    avg_rating = self.all.collect do |game|
       game.average_rating
       binding.pry
    end
    binding.pry
    highest_rating = avg_rating.sort!.last
    self.all.find do |games|
      games.average_rating == highest_rating
    end
  end

end
