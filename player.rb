def get_user_input
  gets.chomp
end

class Player
  def initialize
  end
end

class HumanPlayer < Player
  def initialize(name)
    @name = name
  end

  def name
    return @name
  end
end

class ComputerPlayer < Player
  def initialize
  end
end
