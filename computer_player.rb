require "./board.rb"

class ComputerPlayer < Player
  attr_accessor :board

  def initialize
    @board = Board.new

  end

  def name
    name = "HAL 9000"
  end



end
