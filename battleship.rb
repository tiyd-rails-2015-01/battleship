require './ship.rb'
require './board.rb'


# board debug -----------------------
board = Board.new()
board.place_ship(Ship.new(4), 3, 3, true)
board.has_ship_on?(2, 3)
board.has_ship_on?(3, 3)
board.has_ship_on?(4, 3)
board.has_ship_on?(6, 3)
board.has_ship_on?(7, 3)
board.has_ship_on?(5, 4)

board.debug_board


# ship debug -----------------------
# ship = Ship.new(4)
# ship.place(2, 1, true)
# puts "ship covers?"
# puts ship.covers?(1, 1)
# puts ship.covers?(2, 1)
# puts ship.covers?(3, 1)
# puts ship.covers?(4, 1)
# puts ship.covers?(5, 1)
# puts ship.covers?(6, 1)
# puts ship.covers?(4, 2)
# puts "print coords:"
# ship.print_coords
# puts "fire at"
# puts ship.fire_at(2,1)
