class Player
  attr_reader :board
  attr_reader :name
  def initialize
    @board = Board.new
  end
end
