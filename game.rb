require "./player.rb"

def get_user_input
  gets.chomp
end

class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

  end


  def welcome
    puts "Welcome, #{@player_1.name} and #{@player_2.name}!\nIt's time to play Battleship.\n"

  end

  def place_ships
  end


end
