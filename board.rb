class Board
  def initialize
    @ships = []
    @hit = []

  end

 def has_ship_on?(x, y)
   ship_on = false
   @ships.each do |ship|
     if ship.covers?(x, y)
       ship_on = true
     end
   end
     return ship_on
 end

 def place_ship(ship, x, y, horizontal)
   ship.place(x, y, horizontal)
   @ships.each do |place|
     if place.overlaps_with?(ship)
       return false
     end
   end
   @ships << ship
 end

 def fire_at(x, y)
   if @ships.empty? || @hit.include?([x, y])
     return false
   else
     @ships.each do |ship|
       if ship.fire_at(x, y)
         @hit << [x, y]
         return true
       end
     end
     return false
   end
 end

 ##here, i went back up to line 29 and added "or" statement aka ||








end
