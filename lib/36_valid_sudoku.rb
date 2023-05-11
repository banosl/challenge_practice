require 'pry'

board1 = 
[["5","5",".",".","7",".",".",".","."],
["6",".",".","1","9","5",".",".","."],
[".","9","8",".",".",".",".","6","."],
[".","6",".",".",".",".","2","8","."],
["8",".",".",".","6",".",".",".","3"],
["4",".",".","8",".","3",".",".","1"],
["7",".",".",".","2",".",".",".","6"],
[".",".",".","4","1","9",".",".","5"],
[".",".",".",".","8",".",".","7","9"]]

board2 = 
[["8","3",".",".","7",".",".",".","."],
["6",".",".","1","9","5",".",".","."],
[".","9","8",".",".",".",".","6","."],
["8",".",".",".","6",".",".",".","3"],
["4",".",".","8",".","3",".",".","1"],
["7",".",".",".","2",".",".",".","6"],
[".","6",".",".",".",".","2","8","."],
[".",".",".","4","1","9",".",".","5"],
[".",".",".",".","8",".",".","7","9"]]

class Board
  attr_reader :board,
              :resp,
              :val
  def initialize(board)
    @board = board
    @resp = true
    @val = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  def is_valid_sudoku
    @resp = true
    rows_valid
    binding.pry
    @resp
  end
  
  def rows_valid
    @board.each do |row|
        validate_array(row)
    end
  end
  
  def columns_valid
    counter = 0
    column = []
    
    until counter == 9
      @board.each do |row|
        column << row[0]
      end
      if validate_array(column, @val)
        return true
      else
        return false
      end
      counter += 1
    end
  end
  
  def validate_array(array)
    @val.each do |num|
        if array.count(num) > 1
        @resp = false
      end
    end
  end
end
  
a = Board.new(board1)
p a.is_valid_sudoku