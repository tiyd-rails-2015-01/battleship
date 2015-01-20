def get_user_input
  gets.chomp
end

require './ship.rb'
require './board.rb'

class HumanPlayer < Player
  def initialize(name="Dave")
    @name = name
    @board = Board.new
  end
  def name
    return @name
  end
  def board
    return @board
  end
  def place_ships(array_of_ship_lengths)
    array_of_ship_lengths.each do |length|
      ship_has_been_placed = false
      while ship_has_been_placed == false
        ship = Ship.new(length)
        puts "#{@name}, where would you like to place a ship of length #{length}?"
        coord = get_user_input
        x = @board.x_of(coord)
        y = @board.y_of(coord)
        puts "Across or Down?"
        direction = get_user_input
        a = true
        if direction == "Across"
          a = true
        else
          a = false
        end
        ship_has_been_placed = @board.place_ship(ship, x, y, a)
        if ship_has_been_placed == false
          puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        end
      end
    end
  end
  def ships
    return @board.fleet
  end
end
