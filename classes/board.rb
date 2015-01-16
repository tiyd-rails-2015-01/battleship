class Board
  def initialize()
    @ships = []
    @hits = []
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
    if @ships.empty? || @hits.include?([x, y])
      return false
    else
      @ships.each do |ship|
        if ship.fire_at(x, y)
          @hits << [x, y]
          return true
        else
          return false
        end
      end
    end
  end
end
