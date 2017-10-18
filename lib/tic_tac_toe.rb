WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0. 4. 8],
  [2, 4, 6],
]

def display_board(board)
  puts " board[0] | board[1] | board[2] "
  puts "-----------"
  puts " board[3] | board[4] | board[5] "
  puts "-----------"
  puts " board[6] | board[7] | board[8] "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player_token)
  board[index] = player_token
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken(board, index) == true
end

def turn(input)
  count = 0
  while count < 9
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if position_taken == true
      puts "Invalid move."
    elsif
      count == 0 || count%2 == 0
      move (board, index, "X")
      count += 1
    else
      count == 0 || count%2 == 0
      move (board, index, "O")
      count += 1
    end
  ends
end
