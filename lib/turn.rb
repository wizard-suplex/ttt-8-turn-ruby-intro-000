def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = (input.to_i - 1)
end

def move(array, index, value = "X")
  array[index] = value
end

def valid_move?(board, index)
 if index.between?(1,9)
   if !position_taken?(board, index)
     true
   end
 end

 index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def turn (board)
  puts "Please enter 1-9:"
  index = gets
  input_to_index(index)
  move(board, index)
  valid_move?(board,index)
end
