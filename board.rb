require './ship.rb'

class Board
  def initialize
    @fleet = []
    @placed = []


  end

  def has_ship_on?(x, y)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x, y)
        ship_on = true
      end
    end
    return ship_on
  end


  def place_ship(ship, x, y, direction)
    ship.place(x, y, direction)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
  end


  def fire_at(x, y)
    @fleet.each do |ship|
      if ship.fire_at(x,y)
        return true
      end
    end
    return false
  end

end
