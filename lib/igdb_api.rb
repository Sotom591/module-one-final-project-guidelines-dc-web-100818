require 'json'
require  'pry'
require 'igdb_client'




IGDB::API.api_key = 'c117121c0dbbb1c380025bb18109158b'


# class GameAPI
#
#
#
#   def self.search_name(name)
#     obj_name = IGDB::API.search_games "#{name}", {fields: "name"}
#     arr = obj_name[0..5].collect {|game| game.name}
#     next_line = arr.join("\n")
#     next_line
#
#   end
#
#   def self.search_esrb_synopsis(name)
#     obj_name = IGDB::API.search_games ["#{name}"], {fields: "name,esrb.synopsis"}
#     if obj_name.first.esrb == nil
#      "Sorry! Couldn't find a game by that name! Try a different name!"
#     else
#      obj_name.first.esrb.synopsis
#    end
#   end
#
# def self.search_rating(name)
#   obj_name = IGDB::API.search_games ["#{name}"], {fields: "name,rating"}
#   if obj_name.first.rating == nil
#      "Sorry! Couldn't find a game by that name! Try a different name!"
#    else
#      obj_name.first.rating
#   end
# end
#
# def self.search_release_date(name)
#   obj_name = IGDB::API.search_games ["#{name}"], {fields: "name,release_dates"}
#   if obj_name.first.release_dates == nil
#      "Sorry! Couldn't find a game by that name! Try a differnt name!"
#    else
#      obj_name.first.release_dates.first.human
#   end
# end
#
#   def self.random_game_option
#     num = 1 + rand(111394)
#     obj_name = IGDB::API.games num, {fields: "name"}
#     obj_name.first.name
#   end
# end
