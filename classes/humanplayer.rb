def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_accessor :name

  def initialize(input = "Dave")
    @board = Board.new
    @name = input
    @target_board = Board.new
    @target_board.is_target_board = true
  end

  def ships
    board.ships
  end

  def place_ships(ship_lengths)
    ship_lengths.each do |length|
      placed = false
      puts "#{@name}, where would you like to place a ship of length #{length}?"

      until placed
        coordinate = get_user_input
        x = @board.x_of(coordinate)
        y = @board.y_of(coordinate)
        ship = Ship.new(length)
        puts "Across or Down?"
        across = get_user_input
        is_it_across = across.downcase.include?("across")
        placed = @board.place_ship(ship, x, y, is_it_across)

        if placed == false
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        puts "#{@name}, where would you like to place a ship of length #{length}?"
        end
      end
    end
  end

  def turn
    puts "Where would you like to fire #{@name}"
    coordinates = get_user_input
    x = self.board.x_of(coordinates)
    y = self.board.y_of(coordinates)
    return [x, y]
  end

  def display_game_status
    @target_board.display
    puts ""
    @board.display
  end

end
