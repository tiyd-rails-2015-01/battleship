class Ship
  def initialize(shiplength)
    @shiplength = shiplength
  end

  def length
    return @shiplength
      #use @instance variable to indicate that you want to apply this to all the examples
  end  
end




carrier = Ship.new(5)
battleship = Ship.new( 4)
cruiser = Ship.new(3)
submarine = Ship.new(3)
destroyer = Ship.new(2)
