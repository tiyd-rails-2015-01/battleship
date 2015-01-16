class Ship
  def initialize(length)
    @length = length
    @hit_points = @length
  end

  def length
   return @length
  end

  def place(horizontal, vertical, across)
    if @coordinates == nil
      #if coordinates is nil then it means that it hasn't been created and
      #thus the ship hasn't been placed
      @coordinates = []
      count = @length
      while count > 0
        count = count - 1
        @coordinates << [horizontal, vertical]
        if across
          horizontal = horizontal + 1
        else
          vertical = vertical + 1
        end
      end
      #across = true, down = false
      return true
    else
      return false
    end
  end

  def covers?(horizontal, vertical)
    square = [horizontal, vertical]

    @coordinates.each do |coordinate|
      if coordinate == square
        return true
      end
    end

    return false
  end

  def overlaps_with?(other_ship)
    @coordinates.each do |square|
      if other_ship.covers?(square[0], square[1])
        return true
      end
    end
    return false
  end

#def parent_of?(child)
# child.each do |gene|
#   unless @genes.include?(gene)
#     return false
#   end
# end
# return true
# end

  def fire_at(horizontal, vertical)
    if covers?(horizontal, vertical)
      @hit_points = @hit_points - 1
      return true
    else
      return false
    end
  end

  def sunk?
    if @hit_points == 0
      return true
    else
      return false
    end
  end



end

destroyer = Ship.new(2)
submarine = Ship.new(3)
cruiser = Ship.new(3)
battleship = Ship.new(4)
carrier = Ship.new(5)
