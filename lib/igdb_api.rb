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
  obj_name.first.rating
end

Pry.start
