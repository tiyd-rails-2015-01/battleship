require './Player.rb'

class HumanPlayer < Player
  # attr_accessor :board, :name
  # def initialize(name = "Dave")
  #   @board = Board.new
  #   @name = name
  #   @ships = []
  # end

  def initialize(name = "Dave")
    super(name)
  end
end
