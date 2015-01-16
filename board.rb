require './ship.rb'

class Board
  def initialize
    @fleet = []
  end

  def has_ship_on?(x, y)
    ship_on = false
    @fleet.each do |ships|
      if ships.covers?(x, y)
        ship_on = true
      end
    end
    return ship_on
  end

  def place_ship(ship, x, y, horizontal)
    ship.place(x, y, horizontal)
    conflict = false
    @fleet.each do |ship|
      if ship.overlaps_with?(ship)
        conflict = true
      end
    end
    if !conflict
      @fleet << ship
      return true
    else
      return false
    end
  end

  def fire_at(x, y)

  end

end
