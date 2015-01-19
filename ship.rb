class Ship

  attr_accessor :length, :locations, :placed

  def initialize (length)
    @length = length
    @locations = []
    @placed = false
    @ship_hits = 0
  end

  def place(column, row, across)
    if @placed == false
      @placed = true
      (@length).times do |i|
        if across
          @locations << [column + i, row]
        else
          @locations << [column, row + i]
        end
      end
    end
  end

  def covers?(column, row)
    @locations.include?([column , row])
  end

  def overlaps_with?(other_ship)
    do_they_actually_overlap = false
    @locations.each do |location| # location = [column, row]
      column = location[0]
      row = location[1]
      if other_ship.covers?(column, row) # true or false
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        do_they_actually_overlap = true
      end
    end
    return do_they_actually_overlap
  end

  def fire_at(column, row)
    hit = false
    if @locations.include?([column , row])
      hit = true
      @ship_hits += 1
    end
    return hit
  end

  def sunk?
    sunk = false
    if @ship_hits == @length
      sunk = true
    end
    return sunk
  end
end
