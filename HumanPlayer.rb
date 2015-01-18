require './Player.rb'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  # attr_accessor :board, :name
  # def initialize(name = "Dave")
  #   @board = Board.new
  #   @name = name
  #   @ships = []
  # end

  def initialize(name = "Dave")
    super(name)
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    @ships.each do |ship|
      until ship.placed do
        puts "#{@name}, where would you like to place a ship of length #{ship.length}?"
        coords = get_user_input
        column = @board.x_of(coords)
        row = @board.y_of(coords)
        puts "Across or Down?" #Across is true
        a_or_d = get_user_input
        if a_or_d == "Down"
          a_or_d = false
        else
          a_or_d = true
        end
        board.place_ship(ship, column, row, a_or_d)
        coords = ""
        a_or_d = ""
      end
    end
  end

end
