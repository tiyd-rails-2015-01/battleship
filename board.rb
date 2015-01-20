class Board
  def initialize
    @ships = []
    @hit = []

  end

  def has_ship_on?(x, y)
    ship_on = false
    @ships.each do |ship|
      if ship.covers?(x, y)
        ship_on = true
      end
    end
    return ship_on
  end

  def place_ship(ship, x, y, horizontal)
    ship.place(x, y, horizontal)
    @ships.each do |place|
      if place.overlaps_with?(ship)
        return false
      end
    end
    @ships << ship
  end

  def fire_at(x, y)
    if @ships.empty? || @hit.include?([x, y])
      return false
    else
      @ships.each do |ship|
        if ship.fire_at(x, y)
          @hit << [x, y]
          return true
        end
      end
      return false
    end
  end

  ##Parker for yourself- here, i went back up to line 29 and added "or" statement aka ||

  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display
    display_header
    y_axis = ('A'..'J').to_a#rray
    (1..10).each do |row|
      resulting_row = "#{y_axis[row-1]} |"
      (1..10).each do |col|
        if @hit.include?([col, row])
          resulting_row << " X |"
        elsif has_ship_on?(col, row)
          resulting_row << " O |"
        else
          resulting_row << "   |"
        end
      end
      puts resulting_row
    end
    display_footer
  end

  def display_footer
    puts "  -----------------------------------------"
  end

  def sunk?
    if @ships.empty?
      return false
    end
    @ships.each do |s|
      if s.sunk? == false
        return false
      end
    end
  end

 








end
