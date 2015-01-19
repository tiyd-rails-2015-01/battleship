require "./player.rb"
require "./board.rb"

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_accessor :name

  def initialize(name = "Dave")
    @name = name
    @board = Board.new
    @ships = []
  end

  def ships
    board.ships
  end

  def place_ships(ship_lengths)
    ship_lengths.each do |l|
      puts "#{name}, where would you like to place a ship of length #{l}?"
      coordinate = get_user_input
      x = @board.x_of(coordinate)
      y = @board.y_of(coordinate)
      ship = Ship.new(l)
      puts "Across or Down?"
      across = get_user_input
      is_it_across = across.include?("across")
      board.place_ship(ship, x, y, is_it_across)
    end
  end

end
