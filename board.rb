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
    @has_ships.each do |ship|
      if ship.overlaps_with?(ship)
        return false
      end
    end
    @has_ships << ship
    ship.show_coords.each do |coord|
      #@target_grid[coord[1]-1][coord[0]-1] = 1
    end
    return true
  end
  def fire_at(x, y)
    if @has_ships.empty?
      return false
    else
      @has_ships.each do |potato|
         if potato.covers?(x, y)
           return true
         else
           return false
         end
       end
    end
  end


end
