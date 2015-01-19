require "./player.rb"
require "./board.rb"

class HumanPlayer < Player
  attr_accessor :name

  def get_user_input
    gets.chomp
  end

  def initialize(name = "Dave")
    @name = name
    @board = Board.new
  end



end
