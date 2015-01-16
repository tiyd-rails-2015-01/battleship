require './ship.rb'

class Board
  def initialize
    @ships = []

  end

  def has_ship_on?(x, y)
    covered = false
    @ships.each do |ship|
      if ship.covers?(x, y)
        covered = true
      end
    end
    return covered

  end

  def place_ship(ship, x, y, across)
    covered = false
    ship.place(x, y, across)
    @ships << ship
  end



end
