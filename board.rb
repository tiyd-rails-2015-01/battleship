require './ship'

class Board

  attr_accessor :fleet

  def initialize
    @fleet = []
    @placed = []
    @shots_taken = []
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
    ship.locations.each do |location_on_board|
      @cells_with_ships << location_on_board
    end
  end

  def fire_at(x, y)
    if @shots_taken.include?([x, y])
      return false
    else
      @shots_taken << [x, y]
      @fleet.each do |ship|
        if ship.fire_at(x, y)
          return true
        end

      end
    end
    return false
  end

  def game_board_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def game_board_footer
    puts "  -----------------------------------------"
  end

  def display
    y_axis = ["A","B","C","D","E","F","G","H","I","J"]
    output = ""
    self.game_board_header
    (1..10).each do |row|
      output = "#{y_axis[row - 1]} |"
      (1..10).each do |column|
        if @shots_taken.include?([column, row]) && self.has_ship_on?(column, row)
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

  def sunk?
    if @fleet.empty?
      return false
    end
    @fleet.each do |ship|
      if ship.sunk? == false
        return false
      else
        return true
      end
    end
    
  #   if @shots_taken.empty?
  #     return false
  #   end
  #   if @shots_taken.sort == @cells_with_ships
  #     return true
  #   else
  #     return false
  #   end
  end

end
