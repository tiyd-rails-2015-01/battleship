class Ship

  def initialize(length)
    @length = length
    @coordinates = []
    @placed = false
  end

  def length
    @length
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

  def overlaps_with?(ship)
    if (@coordinates).empty?
      return true
    else
      return false
    end
  end

end
