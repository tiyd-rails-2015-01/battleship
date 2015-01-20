class Board
  attr_accessor :shots_fired, :fleet
  def initialize
    @fleet = []
    @shots_fired = []
    @coordinates
  end

  def place_ship(ship, x_axis, y_axis, across)
    ship.place(x_axis, y_axis, across)
    @fleet.each do |other_ships|
      if ship.overlaps_with?(other_ships)
        return false
      end
    end
    @fleet << ship
    return true
  end

  def has_ship_on?(x_axis, y_axis)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x_axis, y_axis)
        ship_on = true
      end
    end
    return ship_on
  end

  def add_coordinates_of_ships
    coords = []
    @fleet.each do |ship|
      ship.coordinates.each do |coord|
        coords << coord
      end
    end
    return coords
  end

  def fire_at(x_axis, y_axis)
    if @fleet.empty?
      return false
    end
    if @shots_fired.include?([x_axis, y_axis])
      return false
    else
      @fleet.each do |ship|
        if ship.covers?(x_axis, y_axis)
          @shots_fired << [x_axis, y_axis]
          return true
        else
          @shots_fired << [x_axis, y_axis]
          return false
        end
      end
    end
  end

  def display
    top_lines
    full_board
    bottom_line
  end

  def top_lines
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def bottom_line
    puts "  -----------------------------------------"
  end

  def full_board
    coords = add_coordinates_of_ships
    header = ["A |","B |","C |","D |","E |","F |","G |","H |","I |","J |"]
    (1..10).each do |y|
      print header[y-1]
      header
        (1..10).each do |x|
          if coords.include?([x,y]) && !@shots_fired.include?([x,y])
            print " O |"
          elsif coords.include?([x,y]) && @shots_fired.include?([x,y])
           print " X |"
          else
           print "   |"
          end
        end
      print "\n"
    end
  end

  def sunk?
    if @shots_fired.empty?
      return false
    else
      if @shots_fired.sort == add_coordinates_of_ships.sort
        return true
      else
        return false
      end
    end
  end

end
