def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(user_input)
  index = user_input.to_i
  index = index - 1
end

def valid_move?(board, index)
  if (index == -1)
    return false
  end
  return (board[index] == " ")
end

def move(board, position, char = "X")
  board[position] = char
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input_num = input_to_index(user_input)
  if (valid_move?(board, user_input_num))
    move(board, user_input_num)
  else
    while(!valid_move?(board, user_input_num)) 
      puts "New input"
      user_input = gets.strip
      user_input_num = input_to_index(user_input)
    end
  end
  display_board(board)
end