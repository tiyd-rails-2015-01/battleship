require './board'
b = Board.new
b.place_ship(Ship.new(2), 6, 4, true)


puts b.ship_points
