require './ship.rb'
require './board.rb'
require './player.rb'
require './game.rb'

# game debug --------------------------
# human1 = HumanPlayer.new("Amy")
# human2 = HumanPlayer.new("Beth")
# game = Game.new(human1, human2, [2])
# game.place_ships
# game.play

# player debug ------------------------
 # player = HumanPlayer.new("Alice")
 # player.place_ships([2,3])
# player.place_ships([2,5])
# player = ComputerPlayer.new
# puts "player class: #{player.class}"


# board debug -----------------------
# board = Board.new()
#
#
# board.debug_board
#
# board.place_ship(Ship.new(2), 3, 6, true)
# board.place_ship(Ship.new(3), 7, 4, true)
# board.place_ship(Ship.new(3), 4, 8, true)
# board.place_ship(Ship.new(4), 1, 1, true)
# board.place_ship(Ship.new(5), 6, 2, false)
#
# board.debug_board
#
# board.display

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
