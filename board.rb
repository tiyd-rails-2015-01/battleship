require './ship.rb'

class Board
  def initialize
    @ships = []
    @hits = []
  end

  def place_ship(ship, column, row, across)
    has_ship_on = false
    if @ships.empty?
      ship.place(column, row, across)
      @ship = ship
      @ships << ship
    else
      @ships.each do |all_ship|
        if all_ship.overlaps_with?(@ship)
          has_ship_on = true
        end
      end
      if !has_ship_on
        @ships << ship
      end
    end
    #return has_ship_on
end

  def has_ship_on?(column, row)
    has_ship_on = false
    if @ship && @ship.covers?(column, row)
      has_ship_on = true
    end
    return has_ship_on
  end
  def fire_at (column, row)
    hit = false
    if @ships.empty?
      false
    else
      @ships.each do |ship|
        if ship.covers?(column, row)
          hit = true
          temp_hits = Array.new(column, row)
          @hits << temp_hits
        end
        return hit
      end
    end
  end
end
