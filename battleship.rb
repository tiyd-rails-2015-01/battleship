class Ship
  def initialize(type)
    @type = type
  end
end

carrier = Ship.new("carrier")
battleship = Ship.new("battleship")
cruiser = Ship.new("cruiser")
submarine = Ship.new("submarine")
destroyer = Ship.new("destroyer")
