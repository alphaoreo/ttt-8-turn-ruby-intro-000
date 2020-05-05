def turn(board)
  puts " Please selct the cell you would like to play in"
  choice = gets.strip
  value = input_to_index(choice)
  if !(valid_move?(board, value))
    turn(board)
  end
  move(board, value)
  display_board(board)
  


def valid_move?(board, index)
  
  if position_taken(board,index)
    return false
  elsif index.between?(0,board.length)
    return true
  else
    return true

  end
end
    
def position_taken?(board, index)
  
  taken = nil
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
  taken
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(number)
  number=number.to_i
  index=number-1
end

def move(board, choice, player="X")
  board[choice]=player
end