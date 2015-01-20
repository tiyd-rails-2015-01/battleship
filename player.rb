require './board'
class Player
  attr_accessor :board, :name, :ships
  def initialize
    @board = Board.new
    @player_ships = []
  end
  def create_ships(ships_length)
    if @player_ship == []
      ships_length.each do |length|
        @player_ships << Ship.new(length)
      end
    end
  end


end
