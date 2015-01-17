class ComputerPlayer < Player
  attr_accessor :board
  def initialize
    @name = "HAL 9000"
    @board = Board.new
  end
end
