require './player.rb'
require './board.rb'
require './ship.rb'

def get_user_input
  gets.chomp
end

class HumanPlayer < Player
  attr_accessor :name

  def initialize(player_name = "Dave")
    @board = Board.new
    @name = player_name
  end

  def name
    return @name
  end
end
