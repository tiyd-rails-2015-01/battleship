require './board'

class Player

  attr_accessor :name, :board, :ships

  def initialize
    @board = Board.new
    @shipp = []
  end

  def board
    Board.new
  end

  def create_ships(ship_lengths)
    if @shipp.empty?
      ship_lengths.each do |length|
        @shipp << Ship.new(length)
      end
    end
  end


end
