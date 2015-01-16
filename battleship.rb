class Ship
  def initialize(ship)
    @ship = ship
  end
  def length
    length = 4
  end
  def place(place_l, place_r, good)
    @place_l = place_l
    @place_r = place_r
    @good = good
  end
  def covers?(covers_l, covers_r)
    @covers_l = [2, 3, 4, 5]
    @covers_r = 1
  end
  def overlaps_with

  end

end
# ship.covers?(1,1, false)
