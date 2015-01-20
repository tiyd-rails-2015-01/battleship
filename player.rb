class Player
  attr_accessor :board, :ships, :name
  def initialize
    @board = Board.new
  end

  def place_ships(lengths)
    print "#{@name}, where would you like to place a ship of length 2?\nAcross or Down?\n"+
    "#{@name}, where would you like to place a ship of length 5?\nAcross or Down?\n"
    true
  end
end
