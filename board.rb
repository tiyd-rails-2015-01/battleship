require './ship'
class Board
  def initialize
    @ship
    @fleet = []
    @shots_fired = []
    @display
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
    top_two_lines
    empty_board
    bottom_line
  end
  def top_two_lines
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
    (1..10).each do |display|
      header = ["A","B","C","D","E","F","G","H","I","J"]
      header.each do |letter|
        puts "#{letter} |   |   |   |   |   |   |   |   |   |   |"
        letter
      end
      #self.full_board
    end
  end
  # def full_board
  #   @fleet
  #
  #   fire at = (1,1) a_1 = ship puts
  #
  #
  #
  #
  #   puts "A |#{a_1}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "B |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "C |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "D |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "E |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "F |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "G |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "H |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "I |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #   puts "J |#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|#{}|"
  #
  #
  #
  #
  #
  # end





end
