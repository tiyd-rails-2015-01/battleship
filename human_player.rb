require './player'
require './board'
require './ship'

class HumanPlayer < Player
  attr_accessor :name, :board
  def initialize(name = "Dave")
    @name = name
    @board = Board.new
  end
end
