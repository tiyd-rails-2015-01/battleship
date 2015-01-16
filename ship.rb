class Ship
  attr_reader :covered_coordinates
  def initialize(length)
    @length = length
    @covered_coordinates = []
    @placed = false
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

  def overlap
    if !(@covered_coordinates).empty?
      false
    else
      true
    end
  end

  def fire_at(x, y)
    if @covered_coordinates.include?
      ship.hits += 1
    end
  end

  def sunk
    if ship.hits == ship.length
    end
  end
end
