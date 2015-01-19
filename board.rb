require './ship.rb'

class Board

  def initialize()
    @fleet = []
    @cells_with_ships = []
    @shots_taken = []

  end

  def fleet
    @fleet
  end

  def has_ship_on?(x, y)
    if @fleet.each do |ship|
      if ship.covers?(x, y)
        @fleet << ship
        return true
      else
        return false
      end # if ship.covers?
      end # else end
    end # if @ships.each
  end # def

  def place_ship(ship, x, y, direction)
    ship.place(x, y, direction)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end # if end
    end # do end
    @fleet << ship
    ship.coordinates.each do |s|
      @cells_with_ships << s
    end
  end # def end

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
    end # @fleet end
    return false
  end # def end

  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display_rows
    letters = ("A".."J").to_a
    letters.each do |l|
      print "#{l} |"
      10.times do
        print "   |"
      end
      print "\n"
    end

  end

  def display_footer
    puts "  -----------------------------------------"
  end
  def display
    display_header
    display_rows
    display_footer

  end

end # class end
