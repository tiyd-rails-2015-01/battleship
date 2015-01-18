# def display
#   a = "A "
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(1, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(2, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(3, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(4, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(5, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(6, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(7, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(8, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(9, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(10, 1)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#
#   puts "    1   2   3   4   5   6   7   8   9   10"
#   puts "  -----------------------------------------"
#   puts a + "|"
#
#   a = "B "
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(1, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(2, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(3, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(4, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(5, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(6, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(7, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(8, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(9, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   covered = false
#   @ships.each do |ship|
#     if ship.covers?(10, 2)
#       a << "| O "
#       covered = true
#     end
#   end
#   if covered == false
#     a << "|   "
#   end
#   puts "    1   2   3   4   5   6   7   8   9   10"
#   puts "  -----------------------------------------"
#   puts a + "|"
#
#   (1..10)
#
#
#
#
#
#   letters = ["A ", "B ", "C ", "D ", "E ", "F ", "G ", "H ", "I "]
#   covered = false
#   for (1..10).each do |r|
#     output = "#{letters[r-1]} "
#     (1..10).each do |c|
#       if ship.covers?([r, c])
#         output << "| O "
#         covered = true
#       end
#     end
#     if covered == false
#       a <<"|   "
#     end
#
#       @ships.each do |ship|
#         if ship.covers?(1, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#
#
#
#
#
#
#
#
#
#
#       a = "A "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 1)
#           a << "| O "
#           covered = true
#         elsif @hits.include?([1, 1])
#           a << "| X "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 1)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts "    1   2   3   4   5   6   7   8   9   10"
#       puts "  -----------------------------------------"
#       puts a + "|"
#
#       a = "B "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 2)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "C "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 3)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "D "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if @hits.include?([7, 4])
#           a << "| X "
#           covered = true
#         elsif ship.covers?(7, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 4)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "E "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 5)
#           a << "| O "
#           covered = true
#         elsif @hits.include?([7, 5])
#           a << "| X "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 5)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "F "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 6)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "G "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 7)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "H "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 8)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "I "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 9)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#
#       puts a + "|"
#
#       a = "J "
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(1, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(2, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(3, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(4, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(5, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(6, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(7, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(8, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(9, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
#       covered = false
#       @ships.each do |ship|
#         if ship.covers?(10, 10)
#           a << "| O "
#           covered = true
#         end
#       end
#       if covered == false
#         a << "|   "
#       end
