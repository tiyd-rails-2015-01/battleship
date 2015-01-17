
class Board

  def initialize
    @fleet = []
  end

  def has_ship_on?(x,y)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x,y)
          ship_on = true
      end
    end
    return ship_on
  end

  def display
  end

  def place_ship(ship, x, y, right_or_down)
    ship.place(x, y, right_or_down)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
  end



end
