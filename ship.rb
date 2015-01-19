class Ship
  attr_reader :covered_coordinates, :placed, :length
  def initialize(length)
    @length = length
    @covered_coordinates = []
    @placed = false
    @ship_hits = 0
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
        puts "Unfortunately, that ship overlaps with one of your other ships. Please try again."
        #something isnt sending the player back to re-place the ship
        #game thinks ships overlap no matter what
        do_they_overlap = true
      end
    end
    return do_they_overlap
  end

  def fire_at(x, y)
    is_ship_hit = false
    if @covered_coordinates.include? [x, y]
        is_ship_hit = true
        @ship_hits += 1
    end
    return is_ship_hit

  end

  def sunk?
    ship_sunk = false
    if @ship_hits == @length
      sunk = true
    end
    return sunk
  end
end
