class Ship
  def initialize(length)
    @length = length
    @coords = []
    @placed = false
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
    
  end
end
