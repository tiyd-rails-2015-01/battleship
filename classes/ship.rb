class Ship
  def initialize(length)
    @length = length
    @covered_coordinates = []
  end

  def length
    return @length
  end

  def place(x, y, across)

    if @covered_coordinates.empty?
      @length.times do
        @covered_coordinates << [x, y]
        if across
          x = x+1
        else
          y = y+1
        end
      end
      return true
    else
      return false
    end
  end

  def covers?(x, y)
    covered_space = [x, y]
    @covered_coordinates.each do |coordinates|
      if coordinates == covered_space
        return true
      end
    end
    return false
  end

  def overlaps_with?(ship_name)
    @covered_coordinates.each do |cs|
      if ship_name.covers?(cs[0], cs[1])
        return true
      end
    end
    return false
  end

  def fire_at(x, y)
    @covered_coordinates.include?([x, y])
  end

end
