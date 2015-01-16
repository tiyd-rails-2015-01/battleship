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
  def show_coords
    return @coordinates_covered
  end
  def overlaps_with?(other_ship)
    ship_2_coords = other_ship.show_coords
    boxes_in_common = ship_2_coords & @coordinates_covered
    !(boxes_in_common.empty?)
  end
  def fire_at(x, y)
    @coordinates_covered.include?([x, y])
  end
end
