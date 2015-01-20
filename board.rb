class Board

  def initialize
    @fleet = []
    @shots_fired = []
    @cells_with_ships = []
  end

  def has_ship_on?(x,y)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x,y)
          ship_on = true
      end
    end
    return ship_on
  end

  def display
  end

  def place_ship(ship, x, y, right_or_down)
    ship.place(x, y, right_or_down)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
    ship.coordinates.each do |locations_on_board|
      @cells_with_ships << locations_on_board
    end
  end

  def fire_at(x,y)
    if @fleet.empty?
      return false
    end
    if @shots_fired.include?([x,y])
      return false
    else
      @fleet.each do |ship|
        if ship.covers?(x,y)
          @shots_fired << [x,y]
          return true
        else
          @shots_fired << [x,y]
          return false
        end
      end
    end
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
      output = "#{y_axis[row-1]} |"
      (1..10).each do |column|
        if @shots_fired.include?([column,row]) && self.has_ship_on?(column,row)
          output << " X |"
        elsif self.has_ship_on?(column,row)
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
    if @shots_fired.empty?
      return false
    end
    if @shots_fired.sort == @cells_with_ships
      return true
    else
      return false
    end
  end


end
