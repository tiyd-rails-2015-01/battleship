class HumanPlayer < Player
  def initialize(player_name)
    @player_name = player_name
  end

  def name
    @player_name
  end
end
