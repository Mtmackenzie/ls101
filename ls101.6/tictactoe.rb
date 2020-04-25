

board = 
"   1 | 2 |  3 
  ---|---|---
   4 | 5 |  6 
  ---|---|---
   7 | 8 |  9 "


message("Welcome to Tic Tac Toe! You are X, computer is O. Be the first to get 3 in a row.")
puts board
message("Input an unused number to play your turn.")
user_input = gets.chomp
#validate with number options, validate not already used
board.gsub!(user_input.to_s, "X")
puts board
message("Computer's turn:")

# board
