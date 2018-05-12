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
winner = []
empty_board = board.all? {|x| x == " "}
WIN_COMBINATIONS.each do |sub_array|
    if empty_board || full?(board)
      return false
    elsif sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
      winner = sub_array
    end
  end
  winner
end



def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

#draw
def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board) || !won?(board)
    return true
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
