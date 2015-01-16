class Board
  def initialize
    @ships = []
  end


  def place_ship(ship, x, y, across)
    ship.place(x, y, across)
    conflict = false
    @ships.each do |s|
      if s.overlaps_with?(ship)
        conflict = true
      end
    end
    if !conflict
      @ships << ship
      return true
    else
      return false
    end
  end


  def has_ship_on?(x, y)
    has_ship_on = false
    @ships.each do |s|
      if s.covers?(x,y)
        has_ship_on = true
      end
    end
    return has_ship_on
  end



  def fire_at(x, y)
    # hit = false
    # @ships.each do |s|
    #   s.fire_at(x, y)
    #
    # end
    # return false
    has_ship_on?(x,y)
  end





  def sunk

  end
end


attacker_board = Board.new
defender_board = Board.new
