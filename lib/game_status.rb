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
def won?
    WIN_COMBINATIONS.each do |win_combo|
      win_index1 = win_combo[0]
      win_index2 = win_combo[1]
      win_index3 = win_combo[2]

      if (@board[win_index1] == "X" && @board[win_index2] == "X" && @board[win_index3] == "X")
        return win_combo
      elsif (@board[win_index1] == "O" && @board[win_index2] == "O" && @board[win_index3] == "O")
        return win_combo
      end
    end
    if (@board.none? {|position| position == " " || position == "" || position == nil})
      return false
    elsif (@board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] || @board == ["","","","","","","","",""]) #
      return false
    else
      return false
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
