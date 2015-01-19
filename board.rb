require './ship.rb'

class Board

  def initialize()
    @fleet = []
    @cells_with_ships = []

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
    if @fleet.each do |fire|
      if fire.fire_at(ship)
        @fleet << ship
        return true
      else
        return false
      end
      end
    end # @fleet end
  end # def end
end # class end
