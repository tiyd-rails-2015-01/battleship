require './battleship.rb'

class Board

  def initialize()
    @ships = []

  end

  def has_ship_on?(x, y)

    @ships.each do |ships|
      if ships.covers?([x, y])
        return ships
      end
    end
  end

end
