require './ship.rb'

class Board
  def initialize
    @ships = []
    @hits = []
  end

  def place_ship(ship, column, row, across)
    ship.place(column, row, across)
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

  def has_ship_on?(column, row)
    has_ship_on = false
    @ships.each do |s|
      if s.covers?(column, row)
        has_ship_on = true
      end
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
          temp_hits = Array.new
          temp_hits << [column, row]
            if @hits.include?(temp_hits)
              return false
            else
              @hits << temp_hits
            end
          #puts "#{@hits}"
        end
        return hit
      end
    end
  end


end
