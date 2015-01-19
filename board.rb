class Board
  def initialize()
    @fleet = []
    @has_been_shot = []
  end
  def has_ship_on?(x, y)
    covered = false
    @fleet.each do |ship|
      if ship.covers?(x, y)
        covered = true
      end
    end
    return covered
  end
  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    @fleet.each do |other_ships|
      if ship.overlaps_with?(other_ships)
        return false
      end
    end
    @fleet << ship
    return true
  end
  def fire_at(x, y)
    if @fleet.empty? || @has_been_shot.include?([x, y])
      return false
    else
      @fleet.each do |ship|
        if ship.fire_at(x, y)
          @has_been_shot << [x, y]
          return true
        end
      end
    end
    return false
  end
  def fleet_positions
    coordinates = []
    @fleet.each do |ship|
      ship.show_coords.each do |c|
        coordinates << c
      end
    end
    return coordinates
  end
  def locations_of_hits
    return @has_been_shot
  end
  def display
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    row = (1..10).to_a
    ship_coords = fleet_positions
    red_xes = locations_of_hits
    letters = ("A |".."J |").to_a
    row.each do |num|
      boxes = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
      ship_coords.each do |coord|
        if coord[1] == num
          boxes[coord[0]-1] = "O"
        end
      end
      red_xes.each do |c|
        if c[1] == num
          boxes[c[0]-1] = "X"
        end
      end
      puts "#{letters[num-1]} #{boxes[0]} | #{boxes[1]} | #{boxes[2]} | #{boxes[3]} |" +
      " #{boxes[4]} | #{boxes[5]} | #{boxes[6]} | #{boxes[7]} | #{boxes[8]} | #{boxes[9]} |"
    end
    puts"  -----------------------------------------"
  end
end
