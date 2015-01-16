 class HumanPlayer
   def initialize(name, board, lose, fire)
     @name = name
     @board = board
     @fire = fire
   end

   def board
     #board is 10x10 grid. x axis (1..10). y axis (A..J)
   end

   def call_shot
     puts "Call your shot"
      #gets x,y coodinates from player
    end
  end

 class ComputerPlayer
   def initialize
   end
 end
