require './board.rb'

class Player

  attr_reader :name
  attr_reader :board

  def initialize
    @name = "default"
    @board = Board.new
  end
end

class HumanPlayer < Player
  def initialize( name = "Dave" )
    @name = name
    @board = Board.new
  end
end

class ComputerPlayer < Player

  def initialize
    @name = "HAL 9000"
    @board = Board.new

  end
end
