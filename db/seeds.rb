jenny = User.create(name: "Jenny")
marissa = User.create(name: "Marissa")
caroline = User.create(name: "Caroline")

fortnite = Game.create(name: "Fortnite", genre: "TPS", date: "2018-10-09")
revil = Game.create(name: "Resident Evil", genre: "TPS", date: "2018-11-06")
gta = Game.create(name: "Grant Theft Auto", genre: "TPS", date: "2018-07-05")
ldead = Game.create(name: "Left 4 Dead", genre: "FPS", date: "2017-06-05")
halo = Game.create(name: "Halo3", genre: "FPS", date: "2018-08-05")
doom = Game.create(name: "Doom", genre: "FPS", date: "2018-09-05")
cstrike = Game.create(name: "Counter-Strike", genre: "FPS", date: "2018-02-05")
nba2k19 = Game.create(name: "NBA 2k19", genre: "Sports", date: "2018-07-10")
pong = Game.create(name: "Pong", genre: "Sports", date: "2018-01-05")
rocketleague = Game.create(name: "Rocket League", genre: "Sports", date: "2018-03-05")
fifa19 = Game.create(name: "FIFA 19", genre: "Sports", date: "2018-04-05")

review1 = Review.create(user: jenny, game: fortnite, rating: 4)
review2 = Review.create(user: jenny, game: ldead, rating: 2)
review3 = Review.create(user: jenny, game: pong, rating: 3)
#^user 1 recaroline
review4 = Review.create(user: marissa, game: gta, rating: 2)
review5 = Review.create(user: marissa, game: cstrike, rating: 3)
review6 = Review.create(user: marissa, game: fifa19, rating: 5)
#^user 2 reviews
review7 = Review.create(user: caroline, game: revil, rating: 1)
review8 = Review.create(user: caroline, game: halo, rating: 5)
review9 = Review.create(user: caroline, game: nba2k19, rating: 5)
#^user 3 reviews
