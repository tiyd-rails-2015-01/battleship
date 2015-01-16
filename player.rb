require './board.rb'

class Player

  attr_reader :name
  attr_reader :board

  def initialize
    @name = "default"
    @board = Board.new
  end

  def place_ships( shipSizes )

    xy = 0 # arbitrary, fix later

    shipSizes.each do |size|
      ship = Ship.new(size)
      @board.place_ship( ship, xy, xy, true ) #arbitrary. fix later
      xy += 1 #arbitrary. fix later
    end

    puts "HAL 9000 has placed his ships.\n"
    return true #arbitrary. fix later
  end

  def ships
    return @board.ships
  end

end

class HumanPlayer < Player
  def initialize( name = "Dave" )
    @name = name
    @board = Board.new
  end
end

class ComputerPlayer < Player

  def initialize
    @name = "HAL 9000"
    @board = Board.new

  end
end
