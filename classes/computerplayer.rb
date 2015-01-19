class ComputerPlayer < Player
  def initialize
    @name = "HAL 9000"
  end

  def name
    @name
  end

  def board
    Board.new
  end
end
