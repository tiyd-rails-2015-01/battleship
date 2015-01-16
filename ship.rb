require './board'

class Ship
  def initialize(length)
    @length = length
    @coordinates = []
    @placed = false
    @hit_counter = 0
  end
  def length
    return @length
  end
  def place(x_axis, y_axis, across)
    if @placed == false
      if across
        @length.times do |i|
          @coordinates << [x_axis + i, y_axis]
        end
      else # = vertical
        @length.times do |i|
          @coordinates << [x_axis, y_axis + i]
        end
      end
      @placed = true
    end
  end
  def covers?(x_axis, y_axis)
    @coordinates.include? [x_axis, y_axis]
  end
  def overlaps_with?(ship)
    overlap = false
    @coordinates.each do |coordinates|
        x_axis = coordinates[0]
        y_axis = coordinates[1]
      if ship.covers?(x_axis, y_axis)
        overlap = true
      end
    end
    return overlap
  end
  def fire_at(x_axis, y_axis)
    hit = false
    if @coordinates.include? [x_axis, y_axis]
      hit = true
      @hit_counter += 1
    end
    return hit
  end
  def sunk?
    sunk = false
    if @hit_counter == @length
      sunk = true
    end
    return sunk
  end
end
