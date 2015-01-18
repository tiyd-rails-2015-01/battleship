
class Player
  attr_accessor :ships, :name, :board

  def initialize(name)
    @name = name
    @board = Board.new
    @ships = []
  end

  def create_ships(ship_lengths)
    if @ships.empty?
      ship_lengths.each do |l|
        @ships << Ship.new(l)
      end
    end
  end


end



#Try 1
#    @ships = []
#    ships_all_placed = false
#    if ships_all_placed == false
#      ship_lengths.each do |l|
#        ship = Ship.new(l)
#        @ships << ship
#      end
#    else
#      puts "#{@name} has placed his ships.\n"
#      ships_all_placed = true
#    end
#    ships_all_placed
#  end

#Try 2
#if @ships.empty?
#  ship_lengths.each do |l|
#    @ships <<  Ship.new
#  end
#else
#  puts "#{@name} has placed his ships.\n"
#end
#puts @ships

#Working!
#def place_ships(ship_lengths)
#  #puts "BUTTS"
#  if @ships.empty?
#    self.create_ships(ship_lengths)
#  end
#  puts "#{@name} has placed his ships.\n"
#  return true
#end
#def create_ships(ship_lengths)
#  ship_lengths.each do |l|
#    @ships << Ship.new(l)
#  end
#end
