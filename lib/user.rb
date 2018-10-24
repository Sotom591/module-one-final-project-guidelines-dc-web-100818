class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews



def rate_game(game, rating)
    current_game = self.reviews.find do |review|
        review.game == game
      end
       if current_game == nil
         game_obj = Game.find_by(name: "#{game}")
         new_review = Review.create(user: self ,game: game_obj, rating: rating)
       else
         current_mov.rating = rating
      end
     end

end
