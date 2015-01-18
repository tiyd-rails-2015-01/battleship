#require './ship'
class Board
  def initialize
    @fleet = []
    @shots_fired = []
    @coordinates_of_ships = []
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

  def place_ship(ship, x_axis, y_axis, across)
    ship.place(x_axis, y_axis, across)
    conflict = false
    @fleet.each do |ship|
      if ship.overlaps_with?(ship)
        conflict = true
      end
    end
    if !conflict
      @fleet << ship
      return true
    else
      return false
    end
  end

  def coordinates_of_ships
    @fleet.each do |ship|
      @coordinates_of_ships << ship.coordinates
    end
    return @coordinates_of_ships
  end

def shots_fired
  @shots_fired
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

  def empty_board
    puts "A |   |   |   |   |   |   |   |   |   |   |"
    puts "B |   |   |   |   |   |   |   |   |   |   |"
    puts "C |   |   |   |   |   |   |   |   |   |   |"
    puts "D |   |   |   |   |   |   |   |   |   |   |"
    puts "E |   |   |   |   |   |   |   |   |   |   |"
    puts "F |   |   |   |   |   |   |   |   |   |   |"
    puts "G |   |   |   |   |   |   |   |   |   |   |"
    puts "H |   |   |   |   |   |   |   |   |   |   |"
    puts "I |   |   |   |   |   |   |   |   |   |   |"
    puts "J |   |   |   |   |   |   |   |   |   |   |"
  end

  def bottom_line
    puts "  -----------------------------------------"
  end

  def full_board
    header = ["A |","B |","C |","D |","E |","F |","G |","H |","I |","J |"]
    header.each do |letter|
      print "#{letter}"
      10.times do
        @coordinates_of_ships.each do |c|
          if @coordinates_of_ships.include?[c[0],c[1]] && !@shots_fired.include?[c[0],c[1]]
            print " O |"
          elsif @coordinates_of_ships.include?[c[0],c[1]] && @shots_fired.include?[c[0],c[1]]
            print " X |"
          else
            print "   |"
          end
        end
      end
        puts "\n"
    end
  end
end


board = Board.new
board.display
# board.top_lines
# board.full_board
# board.bottom_line
