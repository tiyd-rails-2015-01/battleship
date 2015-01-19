require "./player.rb"
require "./board.rb"

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_accessor :name
  attr_reader :target_board

  def initialize(name = "Dave")
    @name = name
    @board = Board.new
    @target_board = Board.new
    @ships = []
  end

  def ships
    board.ships
  end

  def place_ships(ship_lengths)
    ship_lengths.each do |l|
      placed = false
      puts "#{name}, where would you like to place a ship of length #{l}?"

      until placed
        coordinate = get_user_input
        x = @board.x_of(coordinate)
        y = @board.y_of(coordinate)
        puts "Across or Down?"


        across = get_user_input
        is_it_across = across.downcase.include?("across")

        ship = Ship.new(l)
        placed = board.place_ship(ship, x, y, is_it_across)

        unless placed
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        puts "#{name}, where would you like to place a ship of length #{l}?"
        end
      end
    end
  end

end
