# require './player'
# require './board'
# require './ship'

class ComputerPlayer < Player
  # attr_accessor :board, :ships
  def initialize
    @board = Board.new
    @name = "HAL 9000"
    @ships = []
  end

  # def name
  #   name = "HAL 9000"
  # end

  def place_ships(lengths)
    print "HAL 9000 has placed his ships.\n"
    lengths.each do |l|
      @ships << Ship.new(l)
    end
  end
end
