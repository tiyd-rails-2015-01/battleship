require './ship.rb'

ship = Ship.new(4)
ship.place(2, 1, true)
puts "ship covers?"
puts ship.covers?(1, 1)
puts ship.covers?(2, 1)
puts ship.covers?(3, 1)
puts ship.covers?(4, 1)
puts ship.covers?(5, 1)
puts ship.covers?(6, 1)
puts ship.covers?(4, 2)
puts "print coords:"
ship.print_coords
puts "fire at"
puts ship.fire_at(2,1)
