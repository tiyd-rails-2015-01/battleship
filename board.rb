require './battleship.rb'

class Board

  def initialize()
    @ships = []

  end

  def has_ship_on?(x, y)

    if @ships.each do |ship|
      if ship.covers?([x, y])
        @ships << ship
        return true
      else

        return false

      end # if ship.covers?

      end # else end
    end # if @ships.each
  end # def

  def place_ship(ship, x, y, horiz)
    ship.place(x, y, horiz)
    @ships.each do |ship|
      if ship.overlaps_with?(ship)
        return false
        end # if end
      end # if end
      @ships << ship
    end # do end
  end # def end
end # class end




  end
end # class
