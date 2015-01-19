class HumanPlayer < Player
  attr_accessor :name
  def initialize(input = "Dave")
    @board = Board.new
    @name = input
  end
end
