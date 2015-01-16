class Ship
  def initialize(length)
    @length = length
    @coordinates_covered = []
    @has_been_placed = false
    @is_sunk = false
    @red_pegs = []
  end
  def length
    return @length
  end
  def place(x, y, across)
    if @has_been_placed == false
      #@coordinates_covered = [[x + 0, y], [x + 1, y], [x + 2, y], [x + 3, y]]
      if across
        @length.times do |num|
          @coordinates_covered << [x + num, y]
        end
      else
        @length.times do |num|
          @coordinates_covered << [x, y + num]
        end
      end
      @has_been_placed = true
    end
  end
  def covers?(x, y)
    @coordinates_covered.include?([x, y])
  end
  def show_coords
    return @coordinates_covered
  end
  def overlaps_with?(other_ship)
    ship_2_coords = other_ship.show_coords
    boxes_in_common = ship_2_coords & @coordinates_covered
    !(boxes_in_common.empty?)
    # @coordinates_covered.each do |potato|
    #   if other_ship.covers?(potato[0], potato[1])
    #     return true
    #   end
    # end
    # return false
    # this is the way jess did it.  doesn't require show_coords which could be a security issue in other applications
  end
  def fire_at(x, y)
    if @coordinates_covered.include?([x, y])
      @red_pegs << [x, y]
    else
      return false
    end
  end
  def sunk?
    if @coordinates_covered == @red_pegs
      return true
    end
  end
end
