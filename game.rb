def get_user_input
  gets.chomp
end

class Game
  def initialize(player1, player2=ComputerPlayer.new, ships=[2, 3, 3, 4, 5])
    @player1 = player1
    @player2 = player2
    @ships = ships
    @turn_counter = 0
    @won = false
  end
  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!\nIt's time to play Battleship."
  end
  def place_ships
    @player1.place_ships(@ships)
    @player2.place_ships(@ships)
  end
  def take_turn

    if @turn_counter.even?
      @turn_counter += 1
      if @player1.class == HumanPlayer
        puts "Take a shot!"
        @coords = get_user_input
      else
        @coords = "A1"
      end
      x = @player1.board.x_of(@coords)
      y = @player1.board.y_of(@coords)
      shot = @player1.board.fire_at(x, y)
      if shot == true
        puts "Hit!"
      else
        puts "Miss!"
      end
    else
      @turn_counter += 1
      if @player2.class == HumanPlayer
        puts "Take a shot!"
        @coords = get_user_input
      else
        @coords = "A1"
      end
      x = @player2.board.x_of(@coords)
      y = @player2.board.y_of(@coords)
      shot = @player2.board.fire_at(x, y)
      if shot == true
        puts "Hit!"
      else
        puts "Miss!"
      end
    end
  end
end
