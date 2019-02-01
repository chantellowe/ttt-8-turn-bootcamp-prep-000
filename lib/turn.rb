

def display_board(board)
  
  board = [" #{board[0]} ", " #{board[1]} ", " #{board[2]} ", " #{board[3]} ", " #{board[4]} ", " #{board[5]} ", " #{board[6]} ", " #{board[7]} ", " #{board[8]} "]
  
  

  board[0] = "X"
  board[1] = "X"
  board[2] = "X"
  board[3] = "X"
  board[4] = "O"
  board[5] = "O"
  board[6] = "X"
  board[7] = "O"
  board[8] = "O"
  
  
  
=begin
  board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]

  puts " X | X | X "
  puts "-----------"
  puts " X | O | O "
  puts "-----------"
  puts " X | O | O "

  board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

  puts " X | O | X "
  puts "-----------"
  puts " O | X | X "
  puts "-----------"
  puts " O | X | O "
=end
  
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
  
  
  
  
end


index = 0

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index.between?(0, 8)
    true
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] =="O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input -= 1
  return converted_input
end

def move(board, index, character = "X")
  board[index] = character
  return board
end




def turn(board)
  
  
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  index = 0
  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    turn(board)
    until valid_move?(board, index) == true
    move(board, index, "X")
  end
  
  #display_board(board, index)
  end
  
  
  
end














