class Game
  def initialize(player1, player2, lengths=[2, 3, 3, 4, 5])
    @player1=player1
    @player2=player2
    @lengths=lengths
    # self.welcome
    # self.place_ships
  end

  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!"
    puts "It's time to play Battleship."
  end

  def place_ships
    @player1.place_ships(@lengths)
    @player2.place_ships(@lengths)
  end
  # self.welcome
  # puts "#{@player1.place_ships}"
  # puts "#{@player2.place_ships}"
end
