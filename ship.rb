class Ship
  attr_reader :covered_coordinates
  def initialize(length)
    @length = length
    @covered_coordinates = []
    @placed = false
    @ship_hits = []
  end

  def length
   return @length
  end

  def place(x, y, across)
    if @placed == false
      @placed = true

      if across
        (@length).times do |i|
        @covered_coordinates << [x + i, y]
      end
      else
        (@length).times do |i|
          @covered_coordinates << [x, y + i]
        end
      end
    end
  end

  def covers?(x, y)
    @covered_coordinates.include?([x, y])
  end

  def overlaps_with?(other_ship)
    do_they_overlap = false
    @covered_coordinates.each do |coord|
      x = coord[0]
      y = coord[1]
      if other_ship.covers?(x, y)
        do_they_overlap = true
      end
    end
    return do_they_overlap
  end

  def fire_at(x, y)
    is_ship_hit = false
    if @covered_coordinates.include? [x, y]
        is_ship_hit = true
        @ship_hits << [x, y]
    end
    return is_ship_hit

  end

  def sunk?
    ship_sunk = false
    if @ship_hits == @covered_coordinates
      sunk = true
    end
    return sunk
  end
end
