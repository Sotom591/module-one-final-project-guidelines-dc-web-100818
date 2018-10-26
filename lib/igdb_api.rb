require 'json'
require  'pry'
require 'igdb_client'
require 'rest-client'

IGDB::API.api_key= 'c117121c0dbbb1c380025bb18109158b'

def search_name(name)
  obj_name = IGDB::API.search_games "#{name}", {fields: "name"}
  obj_name.first.name
end

def search_rating(name)
  obj_name = IGDB::API.search_games ["#{name}"], {fields: "name,rating"}
  if obj_name.first.rating == nil
     "Sorry! Couldn't find a game by that name! Try a differnt name!"
   else
     obj_name.first.rating
  end
end

Pry.start
