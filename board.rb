class Board
  attr_accessor :fleet
  def initialize()
    @fleet = []
    @has_been_shot = []
    @coordinates = []
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
    ship.show_coords.each do |s|
      @coordinates << s
    end
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
  def locations_of_hits
    return @has_been_shot
  end
  def sunk?
    if @has_been_shot.empty?
      return false
    else
      if @has_been_shot.sort == @coordinates.sort
        return true
      else
        return false
      end
    end
  end
  def x_of(string_coords)
    string_coords.scan( /\d+$/ ).first.to_i
  end
  def y_of(string_coords)
    letter = string_coords.scan( /[[:upper:]]/ ).first
    case letter
    when "A"
      return 1
    when "B"
      return 2
    when "C"
      return 3
    when "D"
      return 4
    when "E"
      return 5
    when "F"
      return 6
    when "G"
      return 7
    when "H"
      return 8
    when "I"
      return 9
    when "J"
      return 10
    end
  end
  def display
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    row = (1..10).to_a
    red_xes = locations_of_hits
    letters = ("A |".."J |").to_a
    row.each do |num|
      boxes = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
      @coordinates.each do |coord|
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
  def display_target
    puts"    1   2   3   4   5   6   7   8   9   10"
    puts"  -----------------------------------------"
    row = (1..10).to_a
    red_xes = locations_of_hits
    letters = ("A |".."J |").to_a
    row.each do |num|
      boxes = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
      @coordinates.each do |coord|
        if coord[1] == num
          boxes[coord[0]-1] = " "
        end
      end
      red_xes.each do |c|
        if c[1] == num
          boxes[c[0]-1] = " "
        end
      end
      puts "#{letters[num-1]} #{boxes[0]} | #{boxes[1]} | #{boxes[2]} | #{boxes[3]} |" +
      " #{boxes[4]} | #{boxes[5]} | #{boxes[6]} | #{boxes[7]} | #{boxes[8]} | #{boxes[9]} |"
    end
    puts"  -----------------------------------------"
    puts ""
  end
end
