def get_user_input
  gets.chomp
end

class Game

  def initialize( player1, player2, ship_sizes = [2,3,3,4,5])
    @player1 = player1
    @player2 = player2
    @ship_sizes = ship_sizes
    @player1Goes = true
  end

  def welcome
    puts "Welcome, #{@player1.name} and #{@player2.name}!\nIt's time to play Battleship.\n"
  end

  def place_ships
    @player1.place_ships(@ship_sizes)
    @player2.place_ships(@ship_sizes)
  end

  def take_turn

    if @player1Goes || @player2.class != ComputerPlayer
      coord = get_user_input
    else
      coord = "A1" #arbitrary value
    end

    if @player1Goes
      @player1Goes = false
      x = @player2.board.x_of( coord )
      y = @player2.board.y_of( coord )
      if @player2.board.fire_at( x, y )
        puts "Hit!"
        @player1.target_board.mark_target_board(x,y,"+")
        return
      else
        puts "Miss!"
        @player1.target_board.mark_target_board(x,y,"-")
        return
      end
    else
      @player1Goes = true
      x = @player1.board.x_of( coord )
      y = @player1.board.y_of( coord )
      if @player1.board.fire_at( x, y )
        puts "Hit!"
        @player2.target_board.mark_target_board(x,y,"+")
        return
      else
        puts "Miss!"
        @player2.target_board.mark_target_board(x,y,"-")
        return
      end
    end

    puts "Miss!"
  end

  def play
    #arbitrary
  end

end
