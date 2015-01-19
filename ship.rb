class Ship
  attr_accessor :length, :covered_coordinates, :placed

  def initialize(length)
    @length=length
    @hit_points= @length
    @covered_coordinates = []
    @placed= false
  end

  def length
    @length
  end

  def place(x, y, across)
    @across= across
    if @placed==false
      @placed=true
      @length.times do |i|
        if across
          @covered_coordinates << [x+ i, y]
        else
          @covered_coordinates<<[x, y + i]
        end
      end
    end
  end

  def covers?(x, y)
    if @covered_coordinates.include?([x,y])
      true
    end
  end

  def overlaps_with?(other_ship)
    overlaps=false
    @covered_coordinates.each do |square|
      x = square[0]
      y = square[1]
      if other_ship.covers?(x, y)
        puts "Unfortunately, that ship overlaps with one of your other ships.  Please try again."
        overlaps= true
      end
    end
    return overlaps
  end

  def fire_at(x, y)
    if self.covers?(x, y)
      @hit_points -=1
      hit = true
    else
      hit = false
    end
  end

  def sunk?
    if @hit_points ==0
      true
    else
      false
    end
  end
end
