
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