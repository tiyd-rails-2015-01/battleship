require "./player.rb"
require "./human_player.rb"
require "./computer_player.rb"

def get_user_input
  gets.chomp
end

class Game
  def initialize(player_1, player_2, ships = [2, 3, 3, 4, 5])
    @player_1 = player_1
    @player_2 = player_2
    @ships = ships
    @player_1_goes = true

  end


  def welcome
    puts "Welcome, #{@player_1.name} and #{@player_2.name}!\nIt's time to play Battleship.\n"

  end

  def place_ships
    @player_1.place_ships(@ships)
    @player_2.place_ships(@ships)
  end

  def take_turn
    if @player_1_goes || @player_2.class != ComputerPlayer
      coord = get_user_input
    else
      coord = "A1"
    end

    if @player_1_goes
      @player_1_goes = false
      x = @player_2.board.x_of(coord)
      y = @player_2.board.y_of(coord)
      if @player_2.board.fire_at(x, y)
        puts "Hit!"

        # puts @player_1.target_board.hits
        @player_1.target_board.hits << [x, y]
        # puts @player_1.target_board.hits


        if @player_2.board.sunk?
          @game_over = true
          puts "Congratulations, #{@player_1.name}!"
        end
        return
      else
        puts "Miss!"


        # puts @player_1.target_board.misses
        @player_1.target_board.misses << [x, y]
        # puts @player_1.target_board.misses


        return
      end
    else
      @player_1_goes = true
      x = @player_1.board.x_of(coord)
      y = @player_1.board.y_of(coord)
      if @player_1.board.fire_at(x, y)
        puts "Hit!"


        # puts @player_2.target_board.hits
        @player_2.target_board.hits << [x, y]
        # puts @player_2.target_board.hits


        if @player_1.board.sunk?
          @game_over = true
          puts "Congratulations, #{@player_2.name}!"
        end
        return
      else
        puts "Miss!"


        # puts @player_2.target_board.misses
        @player_2.target_board.misses << [x,y]
        # puts @player_2.target_board.misses


        return
      end
    end
  end

  def play
    self.welcome
    self.place_ships
    until @game_over == true
      self.take_turn
    end
  end

end
