class Ship

  def initialize(length)
    @length = length
    @hit_points = @length
    @coord = []
    @placed = false
  end

  def length
    return @length
  end

  def place(x, y, horiz)
    if @placed == false
      if horiz
        @length.times do |i|
          @coord << [x + i, y]
        end # do
      else # if horiz
        @length.times do |i|
          @coord << [x, y + i]
        end # do
      end # if horiz
      @placed = true
    end
  end

  def covers?(x, y)
    @coord.include? [x, y]
  end

  def locations
    @coord
  end

  def overlaps_with?(ship)
    overlap = false
    @coord.each do |co|
      if ship.covers?(co[0], co[1])
        overlap = true
      end
    end
    return overlap
  end

  def fire_at(x, y)
    if @coord.include?([x, y])
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
