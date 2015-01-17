 require './ship.rb'

class Board

  def initialize
    @fleet = []
    @hit = []
  end

  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
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

  def display
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
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
    puts "  -----------------------------------------"
  end
end
