class Board
  def initialize
    @ships = []
    @hits = []
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
      if @ships.empty? || @hits.include?([x, y])
        return false
      else
        @ships.each do |ship|
          if ship.fire_at(x, y)
            @hits << [x, y]
        return true
      else
        return false
        end
      end
        end
  end


  def display_header
    puts ""



attacker_board = Board.new
defender_board = Board.new
