# require './player'
require './board'
# require './ship'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
#  attr_accessor :name, :board
  def initialize(name = "Dave")
    @name = name
    @board = Board.new
    @ships = []
  end

  # def ships
  #
  # end

  def place_ships(lengths)
    print "#{@name}, where would you like to place a ship of length 2?\nAcross or Down?\n"+
          "#{@name}, where would you like to place a ship of length 5?\nAcross or Down?\n"
    lengths.each do |l|
      @ships << Ship.new(l)
    end
  end
end
