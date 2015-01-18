class ComputerPlayer <Player

  def name
    @name= "HAL 9000"
  end

  def board
    Board.new
  end

  def place_ships(lengths= [2, 3, 3, 4, 5])
    puts "HAL 9000 has placed his ships.\n"
    lengths.each do |length|
      ship= Ship.new(length)
      @ships << ship
      successful=true
    end
  end


end
