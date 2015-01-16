class Ship

  def initialize(length)
    @length = length
    @coord = []
    @placed = false
  end

  def length
    return @length
  end

  def place(x, y, horiz)
    if @placed == false
      if horiz
        @length.times do |i|
          @coord << [x + i, y]
        end # do
      else # if horiz
        @length.times do |i|
          @coord << [x, y + i]
        end # do
      end # if horiz
    @placed = true
    end # if @place == false
  end # def place

  def covers?(x, y)
    @coord.include? [x, y]
    @x = x
    @y = y
  end

  def overlaps_with?(ship)
    overlap = false
    @coord.each do |coordinates|
      @x = coordinates[0]
      @y = coordinates[1]
      if ship.covers?[x, y]
        overlap = true
      end
    end

  end


end
