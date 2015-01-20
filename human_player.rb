require './player'
require './board'
def get_user_input
  gets.chomp
end
class HumanPlayer<Player
  attr_accessor :name, :board
  def initialize(input = "Dave")
    @name = input
    @board = Board.new
  end


end
