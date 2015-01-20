require './ship.rb'
require './board.rb'
require './player.rb'
require './computer_player.rb'
require './human_player.rb'
require './game.rb'

# @human = HumanPlayer.new("Frank")
# @computer = ComputerPlayer.new
# @game = Game.new(@human, @computer)
# @game.place_ships
# # # # $mock_inputs.clear
# # # # $mock_inputs << "A1"
# # # # $mock_inputs << "Down"
# # # # $mock_inputs << "A3"
# # # # $mock_inputs << "Down"
# # # # $mock_inputs << "A5"
# # # # $mock_inputs << "Down"
# # # # $mock_inputs << "A7"
# # # # $mock_inputs << "Down"
# # # # $mock_inputs << "A9"
# # # # $mock_inputs << "Down"
# # #
# # #
# @game.take_turn
















# human = HumanPlayer.new("Alice")
# computer = ComputerPlayer.new
# game = Game.new(human, computer, [2, 3])
#
# # $mock_inputs << "A2"
# # $mock_inputs << "Down"
# # $mock_inputs << "A1"
# # $mock_inputs << "Across"
# # $mock_inputs << "F1"
# # $mock_inputs << "Across"
# # assert_output("Alice, where would you like to place a ship of length 2?\nAcross or Down?\n"+
# # "Alice, where would you like to place a ship of length 3?\nAcross or Down?\n"+
# # "Unfortunately, that ship overlaps with one of your other ships.  Please try again.\n"+
# # "Alice, where would you like to place a ship of length 3?\nAcross or Down?\n"+
# # "HAL 9000 has placed his ships.\n") do
# game.place_ships



# class Ship
#   def initialize(length)
#     @length = length
#     @coordinates_covered = []
#     @has_been_placed = false
#   end
#   def length
#     return @length
#   end
#   def place(x, y, across)
#     if @has_been_placed == false
#       #@coordinates_covered = [[x + 0, y], [x + 1, y], [x + 2, y], [x + 3, y]]
#       if across
#         @length.times do |num|
#           @coordinates_covered << [x + num, y]
#         end
#       else
#         @length.times do |num|
#           @coordinates_covered << [x, y + num]
#         end
#       end
#       @has_been_placed = true
#     end
#   end
#   def covers?(x, y)
#     @coordinates_covered.include?([x, y])
#   end
#   def show_coords
#     return @coordinates_covered
#   end
#   def overlaps_with?(other_ship)
#     ship_2_coords = other_ship.show_coords
#     puts "potato #{ship_2_coords}"
#     puts "asparagus #{@coordinates_covered}"
#     boxes_in_common = ship_2_coords & @coordinates_covered
#     puts "tomato #{boxes_in_common}"
#     if boxes_in_common.empty?
#       return false
#     end
#
#
#   end
# end
#
#
# ship1 = Ship.new(4)
# ship1.place(2, 1, true)
# ship2 = Ship.new(4)
# ship2.place(3, 1, true)
# ship3 = Ship.new(4)
# ship3.place(2, 1, false)
#
# ship1.overlaps_with?(ship2)
# ship2.overlaps_with?(ship3)
