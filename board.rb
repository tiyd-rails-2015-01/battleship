class Board
  def initialize
    @ships = []
  end


  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    @ship = ship
    @ships << ship
  end

  def has_ship_on?(x, y)
    if @ship && @ship.covers?(x,y)
      return true
    else false
    end
  end



  def fire_at

  end

  def sunk

  end
end


attacker_board = Board.new
defender_board = Board.new
