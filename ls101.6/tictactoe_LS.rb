WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

player_score = 0
computer_score = 0

def prompt(string)
  puts "=> #{string}"
end

def display_board(brd)
  system 'clear'
  prompt("You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}.")
  prompt("First player to reach 5 points is GRAND MASTER.")
  puts " "
  puts " #{brd[1]} | #{brd[2]} | #{brd[3]}"
  puts "---|---|---"
  puts " #{brd[4]} | #{brd[5]} | #{brd[6]}"
  puts "---|---|---"
  puts " #{brd[7]} | #{brd[8]} | #{brd[9]}"
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(ary, punctuation=', ', conjunction='or')
  x = ary.size
  if x < 2
    ary.join
  elsif x == 2
    ary.join(" #{conjunction} ")
  else
    "#{ary.first(x - 1).join(punctuation)}#{punctuation}#{conjunction} #{ary.last}"
  end
end

def player_turn!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice.")
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
 
  if board.values_at(*line).count(marker) == 2
    board.select{|k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_turn!(brd)
  square = nil
  
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end
  
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def grand_master?(player_points, computer_points)
  if player_points == 5
    return "Player"
  elsif computer_points == 5
    return "Computer"
  end
end

loop do
  loop do
    board = initialize_board
  
    loop do
      display_board(board)
      prompt("Player score: #{player_score}, Computer score: #{computer_score}.")
      player_turn!(board)
      break if someone_won?(board) || board_full?(board)
  
      computer_turn!(board)
      break if someone_won?(board) || board_full?(board)
    end
  
    # display_board(board)
  
    if someone_won?(board)
      if detect_winner(board) == "Player"
        player_score += 1
      elsif detect_winner(board) == "Computer"
        computer_score += 1
      end
      prompt("#{detect_winner(board)} won! Player score: #{player_score}, Computer score: #{computer_score}.")
    else
      prompt("It's a tie!")
    end
    display_board(board)
  
  break if player_score == 5 || computer_score == 5
    
  end
  
  prompt("#{grand_master?(player_score, computer_score)} is GRAND MASTER!")
  
  
  prompt("Play again? Input Y for yes, any other key to exit.")
    answer = gets.chomp.upcase
    break if answer != "Y"
end
puts "Bye!"
