
def get_user_input
  gets.chomp
end

require './board.rb'
require './ship.rb'

class Player

  attr_reader :board

  def initialize
    @board = Board.new
  end

  def name
    return @name
  end

  def board
    return Board.new
  end

end
