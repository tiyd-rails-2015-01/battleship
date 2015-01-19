class ComputerPlayer < Player
  def initialize
    @board = Board.new
  end

  def name
    return "HAL 9000"
  end

  def board
    return @board
  end
end
