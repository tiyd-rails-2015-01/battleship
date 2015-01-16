class Ship

  def initialize(length)
    @length = length
    @coordinates = []
  end

  def length
    @length
  end

  def place(column, row, across)
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

  def covers?(column, row)
    if @coordinates.include? [column, row]
      return true
    else
      return false
    end
  end

end
