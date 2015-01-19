 require './ship.rb'

class Board
  attr_reader :hits, :misses

  def initialize
    @ships = []
    @hits = []
    @misses = []
  end

  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
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
      return false
    end
  end

  def has_ship_on?(x, y)
    has_ship_on = false
    @ships.each do |ships|
      if ships.covers?(x, y)
        has_ship_on = true
      end
    end
    return has_ship_on
  end

  def fire_at (x, y)
    is_hit = [x, y]
    hit = false
    if @ships.empty?
      return false
    else
      @ships.each do |ship|
        if ship.covers?(x, y)
          hit = true
          if @hits.include?(is_hit)
            return false
          else
            @hits << is_hit
          end
        else
          @misses << is_hit if !@misses.include?(is_hit)
          return false
        end
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

# may try to change ships to fleet to avoid problems
