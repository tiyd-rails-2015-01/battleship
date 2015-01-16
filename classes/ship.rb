class Ship
  def initialize(length)
    @length = length
    @covered_coordinates = []
  end

  def length
    return @length
  end

  def place(x, y, across)

    @covered_x_coordinates = (x..x+@length-1)
    @covered_y_coordinates = (y..y+@length-1)

    if across
      @covered_x_coordinates.to_a.each do |coordinates|
        @covered_coordinates << [coordinates, y]
      end

      else

      @covered_y_coordinates.to_a.each do |coordinates|
        @covered_coordinates << [x, coordinates]
      end
    end

    if @covered_x_coordinates.include?(x+1)
      across = true
    end

    if @covered_y_coordinates.include?(y+1)
      across = true
    end
  end

  def covers?(x, y)
    if @covered_coordinates.include?([x, y])
      true
    end
  end
end
