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
  def fleet_coords
    return @fleet
  end
  def display
    counter = (1..10).to_a
    letters = ("A |".."J |").to_a
    boxes = []
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    counter.each do |square|
      now_letter = letters[square-1]
      print "#{now_letter}"
      counter.each do |look|
        box = boxes[look-1]
        if
          boxes << "O"
        else
          boxes << " "
        end
      end
      print " #{boxes[0]} | #{boxes[1]} | #{boxes[2]} | #{boxes[3]} | #{boxes[4]} | #{boxes[5]} | #{boxes[6]} | #{boxes[7]} | #{boxes[8]} | #{boxes[9]} |"
      print "\n"
    end
    puts"  -----------------------------------------"
  end
end
