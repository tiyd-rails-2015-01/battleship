require './ship.rb'


def get_user_input
  gets.chomp
end

class Board
  attr_reader :misses, :hits
  def initialize
    @ships = []
    @hits = []
    @misses = []
  end

  def place_ship(ship, column, row, across)
    ship.place(column, row, across)
    conflict = false
    @ships.each do |s|
      if s.overlaps_with?(ship)
        conflict = true
      end
    end
    if !conflict
      @ships << ship
      return true
    else
      ship.placed = false
      ship.locations = []
      return false
    end
  end

  def has_ship_on?(column, row)
    has_ship_on = false
    @ships.each do |s|
      if s.covers?(column, row)
        has_ship_on = true
      end
    end
    return has_ship_on
  end

  def fire_at (column, row) #change to track misses
    hit = false
    #miss = true
    if @ships.empty?
      false
    else
      @ships.each do |ship|
        if ship.covers?(column, row)
          hit = true
          temp_hits = [column, row]
            if @hits.include?(temp_hits)
              return false
            else
              @hits << temp_hits
            end
        else
          @misses << temp_hits if !@misses.include?(temp_hits)
          return false
        end
        #puts "hits array is#{@hits}~~~~~"

        return hit
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
        if @hits.include?([c,r])
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
    if @hits.empty?
      return false
    else
      @hits.length == self.ship_points
    end
  end

  def ship_points
    ship_length = 0
    @ships.each do |i|
      ship_length += i.length
    end
    return ship_length
  end
  def x_of(coords)
    coords.slice(1..coords.length).to_i
  end
  def y_of(coords)
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    y = coords[0]
    letters.each_with_index do |l , index|
      if y == l
        return (index + 1)
      end
    end
  end
end
