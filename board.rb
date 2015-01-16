class Board

  def place_ship(a,b,c,d)
  end

  def has_ship_on?(x,y)
    if self.place_ship(@length, x, y, true)
      true
    else
      false
    end
  end

end
