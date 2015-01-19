require './board'
require './ship'

board = Board.new
board.place_ship(Ship.new(2), 3, 6, true)
#puts "#{@fleet}, with coordinates: #{@coordinates_of_ships}"

board.place_ship(Ship.new(3), 7, 4, true)
board.place_ship(Ship.new(3), 4, 8, true)
board.place_ship(Ship.new(4), 1, 1, true)
board.place_ship(Ship.new(5), 6, 2, false)
board.display
puts '---'
puts board.add_coordinates_of_ships
puts '---'
