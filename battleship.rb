require './ship.rb'
require './board.rb'
require './player.rb'
require './human_player.rb'
require './computer_player.rb'
require './game.rb'


game= Game.new(HumanPlayer.new, HumanPlayer.new("Bob"), [2, 3, 3, 4, 5])
game.play
