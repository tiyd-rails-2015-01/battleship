class Ship

  def initialize(length)
    @length = length
    @coordinates = []
    @placed = false
    @hit_points = @length
  end

  def length
    @length
  end

  def coordinates
    @coordinates
  end

  def place(column, row, across)
    if @placed == false
      @placed = true

      if across == true
        @length.times do |i|
          @coordinates << [column + i, row]
        end
      else
        @length.times do |i|
          @coordinates << [column, row + i]
        end
      end
    end
  end

  def covers?(column, row)
    if @coordinates.include? [column, row]
      return true
    else
      return false
    end
  end

  def overlaps_with?(other_ship)
    if (@coordinates & other_ship.coordinates).empty?
      return false
    else
      return true
    end
  end

  def fire_at(x, y)
    if @coordinates.include?([x, y])
      @hit_points -= 1
      return true
    end
  end

  def sunk?
    if @hit_points == 0
      return true
    end
  end
end
