def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  board[index]
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
   return true
 end
 end
def valid_move?(board, index)
   board[index]
  if index.between?(0, 8) && position_taken?(board, index) == false
     return true
   end
   end
def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  display_board(board)
  if valid_move?(board, index) == true
    return move(board, index, token = "X")
  else return turn(board)
  end
  end
