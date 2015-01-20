require './classes/ship.rb'
require './classes/board.rb'
require './classes/player.rb'
require './classes/humanplayer.rb'
require './classes/computerplayer.rb'
require './classes/game.rb'


# # Debug asking human player for ships (test 30)
# player = HumanPlayer.new
# player.place_ships([2, 3, 3, 4, 5])
# puts "ship length: "
# puts player.ships.length
# puts player.ships[1].length
# puts player.board.has_ship_on?(1, 1)
# # puts player.board.has_ship_on?(4, 1)
# board = Board.new()
# board.place_ship(Ship.new(5), 2, 3, false)
