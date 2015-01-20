require './ship.rb'
require './board.rb'

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
  def ships
    @board.fleet
  end
  def place_ships(lengths)
    lengths.each do |l|
      ship_placed = false
      until ship_placed == true do
        ship_placed = place_ship(l)
      end
    end
    puts "HAL 9000 has placed his ships."
    return true
  end
  def place_ship(l)
    x = rand(1..10)
    y = rand(1..10)
    across = [true, false].sample
    new_ship = Ship.new(l)
    ship_placed = new_ship.place(x, y, across)
    if ship_placed == true
      @board.fleet << new_ship
    end
    return ship_placed
  end

end
