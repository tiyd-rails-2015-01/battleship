class Ship
  def initialize(length)
    @length = length
    @coords = []
    @placed = false
    @hits = 0
  end

  def length
    return @length
  end

  def place(x, y, horizontal)
    if @placed == false
      if horizontal
         (@length).times do |i|
           @coords << [x+i, y]
       end
      else
         (@length).times do |i|
           @coords << [x, y+i]
       end
      end
      @placed = true
    end
  end

  def covers?(x, y)
    @coords.include? [x, y]
  end

  def overlaps_with?(ship)
    overlapping = false
    @coords.each do |coord|
        x = coord[0]
        y = coord[1]
      if ship.covers?(x, y)
        overlapping = true
      end
    end
    return overlapping
  end

  def fire_at(x, y)
    hit = false
    if @coords.include? [x, y]
      hit = true
      @hits += 1
    end
    return hit
  end

  def sunk?
    sunk = false
    if @hits == @length
      sunk = true
    end
  end
end
