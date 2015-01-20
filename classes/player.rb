class Player
  attr_accessor :name, :board, :shots_hit, :shots_missed
  def initialize
    @board = Board.new
    @shots_missed = []
    @shots_hit = []
  end
end
