require "./player.rb"
require "./board.rb"

class HumanPlayer < Player
  attr_accessor :name, :board

  def initialize(name = "Dave")
    @name = name
    @board = Board.new
  end

  # def board
  #   @board
  # end





end
