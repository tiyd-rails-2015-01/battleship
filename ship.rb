class Ship
  def initialize(length)
    @length = length
    @hit_points = @length
    @coordinates = []
    @has_been_placed = false
    @overlaps_with = false
  end

  def length
    return @length
  end

  def covers?(x,y)
      @coordinates.include? [x, y]
  end

  def place (x,y, right_or_down)
    if @has_been_placed == false
      if right_or_down == true
        @length.times do |i|
          @coordinates << [x + i, y]
        end
      else
        @length.times do |i|
          @coordinates << [x, y + i]
        end
      end
      @has_been_placed = true
     end
   end


  def sunk?
    if @hit_points == 0
      return true
    end
  end

  def overlaps_with?(other_ship)
    if
    (@coordinates & other_ship.coordinates).empty?
      return false
    else
      return true
    end
  end

  def coordinates
    return @coordinates
  end

def fire_at(x,y)
  if @coordinates.include?([x,y])
    @hit_points -= 1
  end
end


end
