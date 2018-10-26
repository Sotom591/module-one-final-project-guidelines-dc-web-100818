require 'json'
require  'pry'
require 'igdb_client'




IGDB::API.api_key = 'c117121c0dbbb1c380025bb18109158b'


class GameAPI

def self.game
  obj_name = IGDB::API.games 1942, {fields: "name"}
  obj_name.first.name
end

def self.search_name(name)
  obj_name = IGDB::API.search_games "#{name}", {fields: "name"}
  obj_name.first.name
end

end

# binding.pry
# 0
