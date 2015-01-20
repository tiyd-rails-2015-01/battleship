require './computer_player'

hal = ComputerPlayer.new
hal.place_ships([2, 3, 3, 4, 5])

puts "this is the array#{hal.ships}"
