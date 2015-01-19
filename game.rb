def get_user_input
  gets.chomp
end
class Game
  def initialize(player1, player2, default_lengths=[2, 3, 3, 4, 5])
    @player1=player1
    @player2=player2
    @default_lengths=default_lengths
  
  end

  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @player1.place_ships(@default_lengths)
    @player2.place_ships(@default_lengths)
  end

end
