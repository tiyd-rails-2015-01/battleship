
class Board
  def initialize
    @fleet=[]
    @hits= []
  end
  def place_ship(ship,x,y, across)
    covered= false
    if @fleet.empty?
      ship.place(x,y, across)
      @ship=ship
      @fleet<< ship
    else
      @fleet.each do |existing_ship|
        if existing_ship.overlaps_with?(@ship)
          covered= true
        end
      end
      if !covered
        @fleet<< ship
      end
    end

  end

  def has_ship_on?(x,y)
    covered= false
    if @ship && @ship.covers?(x,y)
      covered= true
    end
    return covered
  end

  def fire_at(x, y)
    hit= false
    if @fleet.empty?
      false
    else
      @fleet.each do |ship|
      if ship.covers?(x,y)
        temp_hits = [x,y]
        hit = true
        @hits << temp_hits
      end
      return hit
    end
    end
  end

end
