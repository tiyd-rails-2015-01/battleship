class HumanPlayer <Player
  def initialize(name= "Dave")
    @name= name
  end

  def name
    @name
  end

  def board
    Board.new
  end
end
