require './ship.rb'

class Board
  def initialize
    @fleet = []
    @placed = []
    @shotstaken = []
    @cells_with_ships = []

  end

  def has_ship_on?(x, y)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x, y)
        ship_on = true
      end
    end
    return ship_on
  end


  def place_ship(ship, x, y, direction)
    ship.place(x, y, direction)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
    # a = ship.locations[0]
    # b = ship.locations[1]
    # c = ship.locations[2]
    # @cells_with_ships << a << b << c
    ship.locations.each do |location_on_board|
      @cells_with_ships << location_on_board
    end
  end


  def fire_at(x, y)
    if @fleet.empty?
       return false
    end
    if @shotstaken.include?([x,y])
      return false  #shot already taken
    else
      @fleet.each do |ship|
        if ship.covers?(x,y)
          @shotstaken << [x,y]
          return true
        else
          @shotstaken << [x,y]
          return false
        end
      end
    end
  end
  #  return false #representing a miss


  def game_board_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def game_board_footer
    puts "  -----------------------------------------"
  end


  def display
    y_axis = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    output = ""
    self.game_board_header
    (1..10).each do |row|
      output = "#{y_axis[row - 1]} |"
      (1..10).each do |column|
        if @shotstaken.include?([column, row]) && self.has_ship_on?(column, row)
          output << " X |"
        elsif self.has_ship_on?(column, row)
          output << " O |"
        else
          output << "   |"
        end
      end
      puts output
    end
    self.game_board_footer
  end

end

# board = Board.new
#
#
# board.place_ship(Ship.new(3), 3, 3, true)
# puts "#{board.inspect}"
