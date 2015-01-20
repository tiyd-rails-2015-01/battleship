class Ship
  def initialize(shiplength)
    @shiplength = shiplength
    @locations = []
    @has_been_placed = false
    @overlaps_with = false
    @hitpoints = @shiplength
  end

  def length
    return @shiplength
      #use @instance variable to indicate that you want to apply this to all the examples
  end

  # def place(x, y, direction)
  #   if @has_been_placed == false # ______  == _______ # has already been placed
  #     if direction
  #       @locations = [[x,y],[x+1,y],[x+2,y],[x+3,y]]
  #     else
  #       @locations = [[x,y],[x,y+1],[x,y+2],[x,y+3]]
  #     end
  #     @has_been_placed = true
  #   end
  # end

  def place(x,y,direction)
    if @locations.empty?
      @shiplength.times do
        @locations << [x,y]
        if direction
          x = x+1
        else
          y = y+1
        end
      end
      return true
    else
      return false
    end
  end


  def covers?(x,y)
    search_for = [x, y]
    @locations.include?(search_for)
  end

  def locations
    @locations
  end

  def overlaps_with?(othership)
#    @locations.each do |check|
#      @locations & othership.locations[x,y]
#    end
      if
      (@locations & othership.locations).empty?
       return false
      else
        return true
      end
  end

  def fire_at(x,y)
    if @locations.include?([x,y])
      @hitpoints = (@hitpoints - 1)
      # @hitpoints -=1
      return true
    else
      return false
    end
  end

  def sunk?
   if @hitpoints == 0
     return true
   end
  end




end

#ship = Ship.new(4)
#ship.place(2, 1, true)


#ship.place(2, 2, false)
