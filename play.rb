require './ship.rb'
require './board.rb'
require './player.rb'
require './game.rb'

puts "Enter player 1's name:"
name1 = gets.chomp

puts "Enter player 2's name:"
name2 = gets.chomp

human1 = HumanPlayer.new(name1)
human2 = HumanPlayer.new(name2)
game = Game.new(human1, human2, [2,3,3,4,5])

game.play
