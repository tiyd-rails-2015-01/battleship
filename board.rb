class Board
  def initialize()
    @has_ships = []
  end
  def has_ship_on?(x, y)
    covered = false
    @has_ships.each do |ship|
      if ship.covers?(x, y)
        covered = true
      end
    end
    return covered
  end
  def place_ship(ship, x, y, across)
      ship.place(x, y, across)
      @has_ships << ship
  end

end

# @ships = all_ships
# covered = false
# ships.each do |ship|
# if ship.covers(x, y)
#   covered = true
#   break
# end
# end
# if !covered
#   actually place
#
# else false
# end
