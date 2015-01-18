class Ship
  def initialize(length)
    @length=length
    @hit_points= @length
    @covered_coordinates = []
  end

  def length
    @length
  end

  def place(x, y, across)
    @across= across
    if @covered_coordinates== []
        if across
          (x..x+@length-1).to_a.each do |coord|
            @covered_coordinates << [coord, y]
          end

        else
          @covered_y_coordinates= (y..y+@length-1).to_a
          @covered_y_coordinates.each do |coord|
            @covered_coordinates<<[x, coord]
          end
        end
      end
  end

  def covers?(x, y)
    if @covered_coordinates.include?([x,y])
      true
    end
  end

  def overlaps_with?(ship)
    @ship=ship
    @covered_coordinates.each do |square|
      if ship.covers?(square[0], square[1])
        return true
      end
    end
    return false
  end

  def fire_at(x, y)
    if self.covers?(x, y)
      @hit_points -=1
      true
    else
      false
    end
  end

  def sunk?
    if @hit_points ==0
      true
    else
      false
    end
  end
end
