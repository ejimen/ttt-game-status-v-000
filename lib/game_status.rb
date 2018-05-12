# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end



# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0, 1, 2], # Top row
[3, 4, 5], # Middle row
[6, 7, 8], # Bottom row
[0, 3, 6], # Left vertical
[1, 4, 7], # Middle vertical
[2, 5, 8], # Right vertical
[0, 4, 8], # Upper left diagonal
[2, 4, 6] # Upper right diagonal
]


#def won
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

position_1 = board[win_index_1] #load the value of the board at win_index_1
position_2 = board[win_index_2] #load the value if the board at win_index_2
position_3 = board[win_index_3] #load the value of the board at win_index_3

position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
#if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #return win_combination #return the win_combination indexes that won.
  #else
  #false
end
end


def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
