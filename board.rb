require './ship.rb'

class Board
  def initialize
    @fleet = []
    @placed = []
    @shotstaken = []


  end

  def has_ship_on?(x, y)
    ship_on = false
    @fleet.each do |ship|
      if ship.covers?(x, y)
        ship_on = true
      end
    end
    return ship_on
  end


  def place_ship(ship, x, y, direction)
    ship.place(x, y, direction)
    @fleet.each do |s|
      if s.overlaps_with?(ship)
        return false
      end
    end
    @fleet << ship
  end


  def fire_at(x, y)
    if @shotstaken.include?([x,y])
      return false  #shot already taken
    else
      @shotstaken << [x,y]
      @fleet.each do |ship|
        if ship.fire_at(x,y)
          return true #shot taken & hit
        end
      end
    end
    return false #representing a miss
  end

  def display
    puts   %Q{    1   2   3   4   5   6   7   8   9   10
  -----------------------------------------
A |   |   |   |   |   |   |   |   |   |   |
B |   |   |   |   |   |   |   |   |   |   |
C |   |   |   |   |   |   |   |   |   |   |
D |   |   |   |   |   |   |   |   |   |   |
E |   |   |   |   |   |   |   |   |   |   |
F |   |   |   |   |   |   |   |   |   |   |
G |   |   |   |   |   |   |   |   |   |   |
H |   |   |   |   |   |   |   |   |   |   |
I |   |   |   |   |   |   |   |   |   |   |
J |   |   |   |   |   |   |   |   |   |   |
  -----------------------------------------
}
  end



  #["A", "B", "C", "D", "E", "F", "G", ""]













end
