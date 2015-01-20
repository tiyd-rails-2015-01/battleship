require './player'

class ComputerPlayer < Player
  def initialize
    @name = "HAL 9000"
    @ships = []
  end

  def name
    @name
  end

  def create_ships(lengths)
    if @ships.empty?
      lengths.each do |length|
        @ships << Ship.new(length)
      end
    end
  end

  def place_ships(lengths)
    self.create_ships(lengths)
    puts "#{@name} has placed his ships.\n"
    return true
  end
  




end
