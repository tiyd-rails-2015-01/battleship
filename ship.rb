class Ship
  def initialize(length)
    @length = length
    @coordinates = []
    @hit = []
  end

  def length
    @length
  end

  def place(x, y, horizontal)
    if @coordinates.empty?
      if horizontal
        @length.times do |num|
          @coordinates << [x + num, y]
        end
      else
        @length.times do |num|
          @coordinates << [x, y + num]
        end
      end
      return true
    else
      return false
    end
  end


  def covers?(x, y)
    if @coordinates.include?([x,y])
      return true
    else
      return false
    end
  end

  def overlaps_with?(other_ship)
    @coordinates.each do |coordinate|
      if other_ship.covers?(coordinate[0],coordinate[1])
        return true
      end
    end
    return false
  end

  def fire_at(x, y)
    hit = false
    if @coordinates.include? [x, y]
      hit = true
      @hit << [x,y]
    end
  end

  def sunk?()
    @coordinates == @hit
  end


end

# def method
#   @array.each do |element|
#     puts element
#   end
# end


# VERSION 1 (works but wrong logic)
# if self.coordinates == other_ship.coordinates
#   return true
# else
#   return false
# end

# VERSION 2 (uhoh)
# if @coordinates(ship1) == @coordinates(ship2)
#   if @coordinates(ship1) == @coordinates(ship3)
#     return true
#     if @coordinates(ship2) == @coordinates(ship3)
#       return false
#     end
#   end
# end
