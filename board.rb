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
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x, y)
        ship_on = true
      end # if ship.covers?
    end # else end
    return ship_on
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
    if @fleet.empty?
      return false
    end
    if @shots_taken.include?([x, y])
      return false
    else
      @fleet.each do |ship|
        if ship.covers?(x, y)
          @shots_taken << [x, y]
          return true
        else
          @shots_taken << [x, y]
          return false
        end
      end
    end #
  end # def end

  def display_header
    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"
  end

  def display_footer
    puts "  -----------------------------------------"
  end

  def display
    letters = ("A".."J").to_a
    output = ""
    self.display_header
    (1..10).each do |row|
      output = "#{letters[row - 1]} |"
      (1..10).each do |column|
        if @shots_taken.include?([column, row]) && self.has_ship_on?(column, row)
          output << " X |"
        elsif has_ship_on?(column, row)
          output << " O |"
        else
          output << "   |"
        end
      end
       # print "\n"
      puts output
    end
    self.display_footer
  end

  def sunk?
   if @fleet.empty?
     return false



   end

  end

end # class end
