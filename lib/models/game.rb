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
     n = self.all.find do |game|
       game.date == newest
     end
     puts "#{n.name}"
   end
#enter the game name you're looking for
#prompt them,
#im going to enter the name
#once i press enter gets chomp
#once I have the user infermation get API
#hey im getting the api for this request
#save it the find_by

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
