class Ship
  def initialize(length)
    @length = length
    @coordinates_covered = []
    @has_been_placed = false
    @is_sunk = false
    @red_pegs = []
  end
  def length
    return @length
  end
  def place(x, y, across)
    if @has_been_placed == false
      if across
        @length.times do |num|
          @coordinates_covered << [x + num, y]
        end
      else
        @length.times do |num|
          @coordinates_covered << [x, y + num]
        end
      end
      @has_been_placed = true
    end
  end
  def covers?(x, y)
    @coordinates_covered.include?([x, y])
  end
  def show_coords
    return @coordinates_covered
  end
  def overlaps_with?(other_ship)
    ship_2_coords = other_ship.show_coords
    boxes_in_common = ship_2_coords & @coordinates_covered
    !(boxes_in_common.empty?)
  end
  def fire_at(x, y)
    if @coordinates_covered.include?([x, y])
      @red_pegs << [x, y]
    else
      return false
    end
  end
  def sunk?
    if @coordinates_covered == @red_pegs
      return true
    end
  end
end


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
    @fleet.each do |potato|
      if ship.overlaps_with?(potato)
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
def display
  puts"    1   2   3   4   5   6   7   8   9   10"
  puts"  -----------------------------------------"


  row = (1..10).to_a
  ship_coords = fleet_positions


  letters = ("A |".."J |").to_a
  row.each do |num|

    boxes = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]

    ship_coords.each do |coord|
      if coord[1] == num
        boxes[coord[0]-1] = "A"
      end

    end

    puts "#{letters[num-1]} #{boxes[0]} | #{boxes[1]} | #{boxes[2]} | #{boxes[3]} |" +
    " #{boxes[4]} | #{boxes[5]} | #{boxes[6]} | #{boxes[7]} | #{boxes[8]} | #{boxes[9]} |"
  end



  puts"  -----------------------------------------"
end
end
board = Board.new
# board.display
# board.place_ship(Ship.new(2), 3, 6, true)


board.place_ship(Ship.new(2), 3, 6, true)
board.place_ship(Ship.new(4), 1, 1, true)
board.place_ship(Ship.new(5), 6, 2, false)
board.place_ship(Ship.new(3), 7, 4, true)

board.place_ship(Ship.new(3), 4, 8, true)
board.fire_at(7, 4)
board.fire_at(7, 5)
board.fire_at(3, 6)
board.fire_at(8, 4)
puts "#{board.inspect}"



# ship = Ship.new(4)
# # ship.place(2, 1, true)
# board.place_ship(Ship.new(4), 2, 1, true)
# board.fire_at(2, 1)
# board.fire_at(3, 1)
# board.fire_at(1, 1)
# puts "#{board.inspect}"
