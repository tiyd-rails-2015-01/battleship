class Board
  attr_accessor :ships
  attr_reader  :hits, :misses
  def initialize
    @ships=[]
    @hits= []
    @misses= []
  end

  def place_ship(ship,x,y, across, computer=false)
    ship.place(x,y, across)
    conflict= false
      @ships.each do |existing_ship|
        if existing_ship.overlaps_with?(ship, computer)
          conflict= true
        end
      end
      if !conflict
        @ships << ship
        return true
      else
        ship.placed = false
        ship.covered_coordinates = []
        return false
      end
  end

  def has_ship_on?(x,y)
    covered= false
    @ships.each do |s|
      if s.covers?(x,y)
      covered= true
    end
  end
    return covered
  end

  def fire_at(x, y)
    temp_hits = [x, y]
    hit= false
    if @ships.empty?
      hit = false
    else
        if self.has_ship_on?(x, y)
          hit = true
            if @hits.include?(temp_hits)
              return hit = false
            else
              @hits << temp_hits
            end
          else
            @misses << temp_hits if !@misses.include?(temp_hits)
            return hit = false
          end
        end
        return hit
  end

  def display_header

    puts "    1   2   3   4   5   6   7   8   9   10"
    puts "  -----------------------------------------"

  end

  def display
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    self.display_header
    (1..10).each do |y|
      output_row = "#{letters[y-1]} |"
      (1..10).each do |x|
        if @hits.include?([x,y])
          output_row += " X |"
        elsif self.has_ship_on?(x,y)
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
      @hits.length == self.ship_length
    end
  end

  def ship_length
    ship_length = 0
    @ships.each do |i|
      ship_length += i.length
    end
    return ship_length
  end

  def x_of(coordinates)
    coordinates[1..coordinates.length].to_i
  end
  def y_of(coordinates)
    letters = ["A","B","C","D","E","F","G","H","I","J"]
    y = coordinates[0]
    letters.each_with_index do |l , index|
      if y == l
        return (index + 1)
      end
    end
  end

end
