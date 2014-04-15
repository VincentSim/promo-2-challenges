require 'open-uri'
require 'json'





def generate_grid(grid_size)
  #TODO: generate random grid of letters
grid = []
alphabet = [*("a".."z")]
for i in 1 .. grid_size.to_i
  item = alphabet.shuffle[0]
  grid << item
end
grid
end

#def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
#end

uri = URI.parse("http://api.wordreference.com/0.8/80143/json/enfr/apple").read
jason = JSON.parse (uri)
puts term_0 = jason["term0"]["PrincipalTranslations"]["0"]["OriginalTerm"]["term"]


