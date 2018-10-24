require_relative '../config/environment.rb'

user1 = User.create(name: "Jenny")
user2 = User.create(name: "Marissa")
user3 = User.create(name: "Caroline")

game1 = Game.create(name: "Left 4 Dead", genre: "FPS", date: 2017-06-05)
game2 = Game.create(name: "NBA 2k19", genre: "Sports", date: 2018-07-05)
game3 = Game.create(name: "Fornite", genre: "TPS", date: 2018-10-05)

review1 = Review.create(user: user1, game: game1, rating: 4)
review2 = Review.create(user: user1, game: game2, rating: 2)
review3 = Review.create(user: user1, game: game3, rating: 3)
#^user 1 reviews
review4 = Review.create(user: user2, game: game1, rating: 2)
review5 = Review.create(user: user2, game: game2, rating: 3)
review6 = Review.create(user: user2, game: game3, rating: 5)
#^user 2 reviews
review7 = Review.create(user: user3, game: game1, rating: 1)
review8 = Review.create(user: user3, game: game2, rating: 5)
review9 = Review.create(user: user3, game: game3, rating: 5)
#^user 3 reviews
