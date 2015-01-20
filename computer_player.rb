require "./board.rb"
require "./ship.rb"

class ComputerPlayer < Player
  attr_reader :target_board
  
  def initialize
    super
    @board = Board.new
    @target_board = Board.new
    @name = "HAL 9000"
  end

  def ships
    board.ships
  end

  def name
   @name
  end

  def place_ships(lengths)
    lengths.each do |l|
      ship_placed = false
      until ship_placed == true do
        ship_placed = place_ship(l)
      end
    end
    puts "HAL 9000 has placed his ships.\n"
    true
  end

  def place_ship(l)
    x = rand(1..10)
    y = rand(1..10)
    across = [true, false].sample
    new_ship = Ship.new(l)
    ship_placed = new_ship.place(x, y, across)
    if ship_placed == true
      board.ships << new_ship
    end
    ship_placed
  end



end
