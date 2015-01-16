require './ship.rb'

class Board
  def initialize
    @ships = [] #array of Ship objects
    @target_grid = [  [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0],
                      [0,0,0,0,0,0,0,0,0,0]]
  end

  def has_ship_on?(x,y)
    @ships.each do |i|
      if i.covers?(x,y)
        return true
      end
    end

    return false
  end

  def place_ship( ship, x, y, isHorizontal)

    ship.place(x,y,isHorizontal)
    @ships.each do |otherShips|
      if ship.overlaps_with?(otherShips)
        return false
      end
    end

    @ships << ship
    return true
  end

  def fire_at(x,y)
    @ships.each do |ship|
      if ship.fire_at(x,y)
        return true
      end
    end

    return false
  end

  def debug_board
    puts "Board debug:"
    puts "Ship coordinates:"
    @ships.each do |ship|
      puts "Ship:"
      ship.print_coords
    end
  end

end
