require 'pry'

board1 = 
[["5","3",".",".","7",".",".",".","."],
["6",".",".","1","9","5",".",".","."],
[".","9","8",".",".",".",".","6","."],
["8",".",".",".","6",".",".",".","3"],
["4",".",".","8",".","3",".",".","1"],
["7",".",".",".","2",".",".",".","6"],
[".","6",".",".",".",".","2","8","."],
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
    columns_valid
    boxes_valid
    
    @resp
  end
  
  def rows_valid
    @board.each do |row|
        validate_array(row)
    end
  end
  
  def columns_valid
    counter = 0
    
    until counter == 9
      column = []
      @board.each do |row|
        column << row[counter]
      end
      validate_array(column)
      counter += 1
    end
  end

  def boxes_valid
    start = [0, 3, 6]
    boxes = []

    3.times do
      start.each do |index|
        box = []
        board.first(3).each do |row|
          box << row.slice(index, 3)
        end
        boxes << box.flatten
      end

      board.rotate!(3)
    end

    boxes.each do |box|
      validate_array(box)
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
b = Board.new(board2)
p a.is_valid_sudoku
p b.is_valid_sudoku