# require './player'
# require './board'
# require './ship'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
#  attr_accessor :name, :board
  def initialize(name = "Dave")
    @name = name
    @board = Board.new
  end

  # def ships
  #
  # end
end
