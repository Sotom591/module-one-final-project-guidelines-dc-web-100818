require_relative '../config/environment.rb'

jenny = User.create(name: "Jenny")
marissa = User.create(name: "Marissa")
caroline = User.create(name: "Caroline")



fortnite = Game.create(name: "Fornite", genre: "TPS", date: 20181009)
revil = Game.create(name: "Resident Evil", genre: "TPS", date: 20181106)
gta = Game.create(name: "Grant Theft Auto", genre: "TPS", date: 20180705)
ldead = Game.create(name: "Left 4 Dead", genre: "FPS", date: 20170605)
halo = Game.create(name: "Halo3", genre: "FPS", date: 20180805)
doom = Game.create(name: "Doom", genre: "FPS", date: 20180905)
cstrike = Game.create(name: "Counter-Strike", genre: "FPS", date: 20180205)
nba2k19 = Game.create(name: "NBA 2k19", genre: "Sports", date: 20180710)
pong = Game.create(name: "Pong", genre: "Sports", date: 20180105)
rocketleague = Game.create(name: "Rocket League", genre: "Sports", date: 20180305)
fifa19 = Game.create(name: "FIFA 19", genre: "Sports", date: 20180405)

review1 = Review.create(user: jenny, game: fortnite, rating: 4)
review2 = Review.create(user: jenny, game: ldead, rating: 2)
review3 = Review.create(user: jenny, game: pong, rating: 3)
#^jenny reviews
review4 = Review.create(user: marissa, game: gta, rating: 2)
review5 = Review.create(user: marissa, game: cstrike, rating: 3)
review6 = Review.create(user: marissa, game: fifa19, rating: 5)
#^marissa reviews
review7 = Review.create(user: caroline, game: revil, rating: 1)
review8 = Review.create(user: caroline, game: halo, rating: 5)
review9 = Review.create(user: caroline, game: nba2k19, rating: 5)
#^caroline reviews
