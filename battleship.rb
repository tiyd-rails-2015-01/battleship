class Ship

  def initialize(length)
    @length = length
    @coordinates = []
    @placed = false
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

end
