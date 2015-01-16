class Board
  def initialize()
    @has_ships = []
    @has_been_shot = []
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
    if @has_ships.empty? || @has_been_shot.include?([x, y])
      return false
    else @has_ships.each do |ship|
         if ship.fire_at(x, y)
           @has_been_shot << [x, y]
           return true
         else
           return false
         end
       end
    end
  end
  def display
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    puts"A |   |   |   |   |   |   |   |   |   |   |"
    puts"B |   |   |   |   |   |   |   |   |   |   |"
    puts"C |   |   |   |   |   |   |   |   |   |   |"
    puts"D |   |   |   |   |   |   |   |   |   |   |"
    puts"E |   |   |   |   |   |   |   |   |   |   |"
    puts"F |   |   |   |   |   |   |   |   |   |   |"
    puts"G |   |   |   |   |   |   |   |   |   |   |"
    puts"H |   |   |   |   |   |   |   |   |   |   |"
    puts"I |   |   |   |   |   |   |   |   |   |   |"
    puts"J |   |   |   |   |   |   |   |   |   |   |"
    puts"  -----------------------------------------"
  end

end
