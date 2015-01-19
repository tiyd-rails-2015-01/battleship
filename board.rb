class Board
  attr_accessor :ships
  def initialize
    @ships=[]
    @hits= []
    @misses= []
  end

  def place_ship(ship,x,y, across)
    ship.place(x,y, across)
    conflict= false
      @ships.each do |existing_ship|
        if existing_ship.overlaps_with?(ship)
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
    hit= false
    if @ships.empty?
      false
    else
      @ships.each do |ship|
      if ship.covers?(x,y)
        hit = true
        temp_hits = [x, y]
          if @hits.include?(temp_hits)
            return false
          else
            @hits << temp_hits
          end
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
    coordinates.slice(1..coordinates.length).to_i
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
