class HumanPlayer < Player
  def initialize(name="Dave")
    @name = name
    @board = Board.new
  end
  def name
    return @name
  end
  def board
    return @board
  end
end
