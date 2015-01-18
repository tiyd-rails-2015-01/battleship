class ComputerPlayer < Player

  def initialize
    super("HAL 9000")
  end

  def place_ships(ship_lengths)
    self.create_ships(ship_lengths)
    puts "#{@name} has placed his ships.\n"
    return true
  end
end
  
