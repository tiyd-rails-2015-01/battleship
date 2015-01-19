require './board.rb'

class Ship

  def initialize(length)
    @length = length
    @coordinates = []
    @placed = false
    @hitpoints = @length
  end

  def length
    return @length
  end

  def place (x, y, horiz)
    if @placed == false
      if horiz
        @length.times do |i|
          @coordinates << [x + i, y] # horizontal
        end # do
      else # if horiz
        @length.times do |i|
          @coordinates << [x, y + i] # vertical
        end # do
      end # if horiz
      @placed = true
    end # if @place == false
  end # def place

  def covers?(x, y)
    @coordinates.include? [x, y]
  end

  def overlaps_with?(ship)
    overlap = false

    @coordinates.each do |i|
      if ship.covers?(i[0], i[1])
        overlap = true
      end
    end
    return overlap
  end

  def fire_at(x, y)
    if @coordinates.include?([x, y])
      @hitpoints -= 1
      return true
    end
  end

  def sunk?
    if @hitpoints == 0
      return true
    end
  end
end
