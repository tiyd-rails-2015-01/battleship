def get_user_input
  gets.chomp
end


class HumanPlayer <Player
  def initialize(name = "Dave")
    super(name)
  end

  def display_game_status
    @hits_board.display
    puts "\n"
    @board.display
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed
        puts "#{@name}, where would you like to place a ship of length #{ship.length}?"
        coordinates = get_user_input
        x = @board.x_of(coordinates)
        y = @board.y_of(coordinates)
        puts "Across or Down?"
        orientation = get_user_input
        if orientation == "Across"
          across = true
        else
          across = false
        end
        @board.place_ship(ship, x, y, across)
        coordinates = ""
        across = ""
      end
    end
  end



end
