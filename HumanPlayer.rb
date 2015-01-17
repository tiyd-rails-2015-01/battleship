class HumanPlayer < Player
  attr_accessor :board
  def initialize(name = "Dave")
    @board = Board.new
    @name = name
  end
end
