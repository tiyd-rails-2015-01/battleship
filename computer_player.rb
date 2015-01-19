class ComputerPlayer <Player

  def initialize
    super("HAL 9000")
  end

  def place_ships(ship_lengths=[2, 3, 3, 4, 5])
    self.create_ships(ship_lengths)
    puts "HAL 9000 has placed his ships.\n"
    return true
  end

  def turn
    x = rand(1..10)
    y= rand(1..10)
    return [x, y]
  end


end
