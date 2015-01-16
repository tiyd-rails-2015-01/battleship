class Board
  def initialize()
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
    ship.place(x, y, across)
    @ships.each do |other_ships|
      if ship.overlaps_with?(other_ships)
        return false
      end
    end
    @ships << ship
    return true
  end

  def fire_at(x, y)
    has_ship_on?(x, y)
    # hit = false
    # @ships.each do |ship|
    #   ship.fire_at(x, y)
    #
    # end
    # return hit
  end
end
