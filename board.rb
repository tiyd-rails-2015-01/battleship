
class Board
  def initialize
    @fleet=[]
    @hits= []
    @misses= []
  end
  def place_ship(ship,x,y, across)
    @ship=ship
    ship.place(x,y, across)
    conflict= false
      @fleet.each do |existing_ship|
        if existing_ship.overlaps_with?(ship)
          conflict= true
        end
      end
      if !conflict
        @fleet<< ship
      end
  end

  def has_ship_on?(x,y)
    covered= false
    @fleet.each do |s|
      if s.covers?(x,y)
      covered= true
    end
  end
    return covered
  end

  def fire_at(x, y)
    hit= false
    if @fleet.empty?
      false
    else
      @fleet.each do |ship|
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
    @fleet.each do |i|
      ship_length += i.length
    end
    return ship_length
  end

end
