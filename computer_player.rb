 #require './player'
 # require './board'
 # require './ship'

class ComputerPlayer < Player
  attr_accessor :board, :ships
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
    make_ships(lengths)
    @ships.each do |s|
      until s.placed
        c = rand(1..10)
        r = rand(1..10)
        h_or_v = [true, false].sample
        board.place_ship(s, c, r, h_or_v)
      end
    end
  end
end
