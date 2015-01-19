class Board
  attr_accessor :shots_fired, :fleet
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
    if board_conflict(ship) == true
      conflict = true
    else
      @fleet << ship
      add_coordinates_of_ships
      return true
    end
  end

  def board_conflict(ship)
    ship.coordinates.each do |coord|
      @coordinates_of_ships.include?(coord)
    end
  end

  def add_coordinates_of_ships
    @fleet.each do |ship|
      ship.coordinates.each do |coord|
        @coordinates_of_ships << coord
      end
    end
    return @coordinates_of_ships
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
      if @coordinates_of_ships == []
        empty_board
      else
        full_board
      end
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
    10.times do |y|
      print header[y]
      #header
        10.times do |x|
          if @coordinates_of_ships.include?([x,y]) #&& !@shots_fired.include?([x,y])
            print " O |"
          #elsif @coordinates_of_ships.include?([x,y]) && @shots_fired.include?([x,y])
          # print " X |"
          else
           print "   |"
          end
        end
      puts "\n"
    end
  end
end

#
# #
# board = Board.new
# ship1 = Ship.new(2)
# board.test_class(ship1, 3, 3, true)
# # ship2 = Ship.new(5)
# # ship2.place(7,3,true)
# # board.test_class(ship2)
# puts "#{board.inspect}"
# # board.fleet << ship1
#
# # ship1.place(3,6,true)
# # @coordinates_of_ship << ship1.coordinates
# # puts "#{@coordinates_of_ship}"
# #board.place_ship(Ship.new(2), 3, 6, true)
# # board.place_ship(Ship.new(3), 7, 4, true)
# # board.place_ship(Ship.new(3), 4, 8, true)
# # board.place_ship(Ship.new(4), 1, 1, true)
# # board.place_ship(Ship.new(5), 6, 2, false)
# board.display
# # board.top_lines
# # board.full_board
# # board.bottom_line
