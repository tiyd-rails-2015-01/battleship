 require './ship.rb'

class Board

  def initialize
    @fleet = []
    @hit = []
  end

  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    conflict = false
    @fleet.each do |s|
      if s.overlaps_with?(ship)
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

  def has_ship_on?(x, y)
    has_ship_on = false
    @fleet.each do |ships|
      if ships.covers?(x, y)
        has_ship_on = true
      end
    end
    return has_ship_on
  end

  def fire_at(x, y)
    if @fleet.empty? || @hit.include?([x, y])
    return false
    else
      @fleet.each do |ship|
        if ship.fire_at(x, y)
          @hit << [x, y]
          return true
        else
          return false
        end
      end
    end
  end

  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    self.display_header
    (1..10).each do |r|
      output_row = "#{letters[r-1]} |"
      (1..10).each do |c|
        if @hit.include?([c,r])
          output_row += " X |"
        elsif self.has_ship_on?(c,r)
          output_row += " O |"
        else
          output_row += "   |"
        end
      end
      puts output_row
    end

    self.display_bottom

  end

  def display_bottom
    puts "  -----------------------------------------"
  end

  def sunk?
    if @hit.empty?
      return false
    else
      @hit.length == self.ship_points
    end
  end

  def ship_points
    ship_length = 0
    @fleet.each do |i|
      ship_length += i.length
    end
    return ship_length
  end
end
