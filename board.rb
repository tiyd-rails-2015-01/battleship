
class Board
  def initialize
    @fleet=[]
    @hits= []
  end
  def place_ship(ship,x,y, across)
    ship.place(x,y, across)
    conflict= false
      @fleet.each do |existing_ship|
        if existing_ship.overlaps_with?(ship)
          conflict= true
        end
      end
      if !conflict
        @fleet<< ship
      end
  end

  def has_ship_on?(x,y)
    covered= false
    @fleet.each do |s|
      if s.covers?(x,y)
      covered= true
    end
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
        hit = true
        temp_hits= Array.new
        temp_hits << [x,y]
          if @hits.include?(temp_hits)
            return false
          else
            @hits << temp_hits
          end
      end
      return hit
    end
    end
  end

  def display
  end
end
