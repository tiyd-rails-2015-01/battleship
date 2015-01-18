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
    @fleet.each do |ship|
      if ship.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
    return true
  end
  def fire_at(x, y)
    if @fleet.empty? || @has_been_shot.include?([x, y])
      return false
    else @fleet.each do |ship|
         if ship.fire_at(x, y)
           @has_been_shot << [x, y]
           return true
         else
           return false
         end
       end
    end
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
  def display
    counter = (1..10).to_a
    letters = ("A |".."J |").to_a
    ship_coords = fleet_positions
    #   container_of_rows.each do |pair|
      #end
    boxes = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    counter.each do |square|
      print "#{letters[square-1]}"
      ship_coords.each do |coords|
        if coords[1] == counter[square-1]
          boxes[coords[0]-1] = "A"
        end
      end
      puts " #{boxes[0]} | #{boxes[1]} | #{boxes[2]} | #{boxes[3]} | #{boxes[4]} | #{boxes[5]} | #{boxes[6]} | #{boxes[7]} | #{boxes[8]} | #{boxes[9]} |"
    end
    puts"  -----------------------------------------"
  end
end
