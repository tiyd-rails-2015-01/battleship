require './ship.rb'
require './board.rb'
require './player.rb'
#require './computer_player.rb'
require './human_player.rb'
class ComputerPlayer < Player
  def initialize
    @board = Board.new
  end
  def name
    return "HAL 9000"
  end
  def board
    return @board
  end
  def place_ships(lengths)
    lengths.each do |l|
      ship_placed = false
      until ship_placed == true do
        ship_placed = place_ship(l)
      end
    end
    puts "HAL 9000 has placed his ships"
    return true
  end
  def ships
    return lengths
  end
end



player = ComputerPlayer.new

player.place_ships([2, 3, 3, 4, 5])

puts "#{player.ships.length}"
puts "#{player.ships[3].length}"
