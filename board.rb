#require './ship.rb'

class Board
  def initialize
    @fleet = []
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
end
