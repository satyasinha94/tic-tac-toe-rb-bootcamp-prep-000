
WIN_COMBINATIONS =
[[0,1,2], #top row
[3,4,5], #middle row
[6,7,8], #bottom row
[0,3,6], #left column
[1,4,7], #middle column
[2,5,8], #right column
[0,4,8], #diagonal
[6,4,2]] #diagonal

def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def input_to_index(input)
  index = "#{input}".to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def position_taken?(board, index)
  if (board[index] == nil || board[index] == " " || board[index] == "")
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Invalid Move!"
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
  end
  move(board, index, value = "X")
  display_board(board)
end

def turn_count(board)
turncount = 0
  board.each do |space|
    if space == "X" || space == "O"
      turncount += 1
    end
  end
  return turncount
end
 def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end
