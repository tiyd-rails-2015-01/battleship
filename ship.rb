class Ship
  def initialize(length)
    @length = length
    @coordinates_covered = []
    @has_been_placed = false
  end
  def length
    return @length
  end
  def place(x, y, across)
    if @has_been_placed == false
      #@coordinates_covered = [[x + 0, y], [x + 1, y], [x + 2, y], [x + 3, y]]
      if across
        @length.times do |num|
          @coordinates_covered << [x + num, y]
        end
      else
        @length.times do |num|
          @coordinates_covered << [x, y + num]
        end
      end
      @has_been_placed = true
    end
  end
  def covers?(x, y)
    @coordinates_covered.include?([x, y])
  end
  def overlaps_with
  end
end

#5, 4, 3, 3, 2
