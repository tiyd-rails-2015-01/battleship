require './ship.rb'

class Board
  def initialize
    @fleet = []
    @hits = []
    @misses = []
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

  def place_ship(ship, x, y, horizontal)
    ship.place(x, y, horizontal)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
  end

  def fire_at(x, y)
    if @fleet.empty? || @hits.include?([x, y])
      hit = false
    else
      @fleet.each do |ship|
        if ship.fire_at(x, y)
          @hits << [x, y]
          return true
        end
      end
      return false
    end
  end

  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display
    letters = ('A'..'J').to_a
    self.display_header
    (1..10).each do |r|
      output_row = "#{letters[r-1]} |"
      (1..10).each do |c|
        if @hits.include? [c, r]
          output_row << " X |"
        elsif self.has_ship_on?(c,r)
          output_row << " O |"
        else
          output_row << "   |"
        end
      end
      puts output_row
    end
    self.display_footer
  end

  def display_footer
    puts "  -----------------------------------------"
  end

  def sunk?
    if @fleet.empty?
      return false
    end
    @fleet.each do |s|
      if s.sunk? == false
        return false
      else
        return true
      end
    end
  end
end
