require "./board"

class Player
  attr_accessor :board, :name, :ships
  def initialize
    @board = Board.new
    @ships = @fleet
  end
end
