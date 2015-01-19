require './ship.rb'

class Board

  def initialize()
    @fleet = []
    @cells_with_ships = []
    @shots_taken = []

  end

  def has_ship_on?(x, y)
    if @fleet.each do |ship|
      if ship.covers?(x, y)
        @fleet << ship
        return true
      else
        return false
      end # if ship.covers?
      end # else end
    end # if @ships.each
  end # def

  def place_ship(ship, x, y, direction)
    ship.place(x, y, direction)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end # if end
    end # do end
    @fleet << ship
    ship.coordinates.each do |s|
      @cells_with_ships << s
    end
  end # def end

  def fire_at(x, y)
    if @shots_taken.include?([x, y])
      return false
    else
      @shots_taken << [x, y]
      @fleet.each do |ship|
        if ship.fire_at(x, y)
          return true
        end
      end
    end # @fleet end
    return false
  end # def end


end # class end
