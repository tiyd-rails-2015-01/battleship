# require './player'
#require './board'
# require './ship'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
 attr_accessor :name, :board
  def initialize(name = "Dave")
    @name = name
    @board = Board.new
    @ships = []
  end

  # def ships
  #
  # end

  def place_ships(lengths)
    make_ships(lengths)
    @ships.each do |s|
      until s.placed
        print "#{@name}, where would you like to place a ship of length #{s.length}?\n"
        coords = get_user_input
        c = @board.x_of(coords)
        r = @board.y_of(coords)
        print "Across or Down?\n"
        h_or_v = get_user_input
        if h_or_v == "Across"
          h_or_v = true
        else
          h_or_v = false
        end
        board.place_ship(s, c, r, h_or_v)
      end
    end
  end
end
