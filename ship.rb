class Ship

  attr_reader :coords

  def initialize( size )
    @size = size
    @coords = []
    @hits = 0
  end

  def length
    return @size
  end

  def place(x, y, isHorizontal)
    if @coords.length == 0
      # @coords << [x,y]

      val = isHorizontal ? x : y


      (@size).times do |i|
        @coords << (isHorizontal ? [val+i,y] : [x,val+i])
      end
      return true
    else
      return false
    end
  end

  def covers?(x, y)
    return @coords.include?([x,y])
  end

  def overlaps_with?(otherShip)
    if (@coords & otherShip.coords).to_a.length > 0
      return true
    else
      return false
    end
  end

  def fire_at(x,y)
    if (covers?(x,y))
      @hits += 1 #possibly not the best strategy-- guessing the same hit twice counts as two hits
    end
    return @coords.include?([x,y])
  end

  def sunk?
    return @hits >= @size
  end

  def print_coords
    puts @coords
  end
end
