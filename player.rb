#require "./board"

class Player
  attr_accessor :board, :name, :ships
  def initialize
    @board = Board.new
    @ships = []
  end

  def make_ships(lengths)
    if ships.empty?
      lengths.each do |l|
        @ships << Ship.new(l)
      end
    end
  end
end
