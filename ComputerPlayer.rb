require './Player.rb'

class ComputerPlayer < Player
  # attr_accessor :board, :name
  # def initialize
  #   @name = "HAL 9000"
  #   @board = Board.new
  #   @ships = []
  # end

  def initialize
    super("HAL 9000")
  end
end
