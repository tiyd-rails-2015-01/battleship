def get_user_input
  gets.chomp
end

class HumanPlayer < Player

  def initialize(name = "Dave")
    super(name)
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      puts "#{@name}, where do you want to place a ship with length #{ship.length}?"
      coords = get_user_input
      column = @board.x_of(coords)
      row = @board.y_of(coords)
      puts "Across or Down?"
      a_or_d = get_user_input
      if a_or_d == "Down"
        a_or_d = false
      else
        a_or_d = true
      end
      board.place_ship(row,column, a_or_d, ship)
    end
  end
end

# may try to change ships to fleet to avoid problems
