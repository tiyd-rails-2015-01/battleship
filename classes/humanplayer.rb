def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_accessor :name

  def initialize(input = "Dave")
    @board = Board.new
    @name = input
  end

  def ships
    board.ships
  end

  def place_ships(ship_lengths)
    ship_lengths.each do |length|
      puts "#{@name}, where would you like to place a ship of length #{length}?"
      coordinate = get_user_input
      x = @board.x_of(coordinate)
      y = @board.y_of(coordinate)
      ship = Ship.new(length)
      puts "Across or Down?"
      across = get_user_input
      is_it_across = across.include?("across")
      board.place_ship(ship, x, y, is_it_across)
    end
  end

end
