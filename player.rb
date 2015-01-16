class Player

  attr_reader :name
  
  def initialize
    @name = "default"
  end
end

class HumanPlayer < Player
  def initialize( name = "Dave" )
    @name = name
  end
end

class ComputerPlayer < Player

  def initialize
    @name = "HAL 9000"
  end
end
