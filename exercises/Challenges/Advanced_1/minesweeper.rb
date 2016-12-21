# input
#  array board => first = top boarder of board 
#                 last = bottom boarder of board
#                 in between lines => either empty space or mine

# output
#   spaces that do not have mines will give number of adjacent mines
#     array board =>
#       in between lines will have either mine or number 

# abstraction
#   transform method will supply the board
#     board.first = top line
#     board.size = rows
#     board.first.size = columns

# algorithm
#   board_array.each_with_index do |row, row_index|
#     row.each_with_index do |spot, coloumn_index|
#       if spot == ' '
#         count = 0
#         count += 1 if row[index -1] == "*"
#         count += 1 if row[index + 1] == "*"
#         count += 1 if board[row_index + 1][coloumn_index] == "*"
#         count += 1 if board[row_index - 1][coloumn_index] == "*"
#         count == 0 ? spot = ' ' : spot = count
#       else
#         next
#       end
#     end
#   end
require 'pry'
class ValueError < StandardError; end

class Board
  def self.transform(input_board)
    raise ValueError, "Not correct" unless valid_board?(input_board)
    input_board.each_with_index.map do |row, row_index|
      row.chars.each_with_index.map do |spot, column_index|
        if spot == ' '
          count = 0
          count += 1 if row[column_index - 1] == "*"
          count += 1 if row[column_index + 1] == "*"
          count += 1 if input_board[row_index + 1][column_index] == "*"
          count += 1 if input_board[row_index + 1][column_index + 1] == "*"
          count += 1 if input_board[row_index + 1][column_index - 1] == "*"
          count += 1 if input_board[row_index - 1][column_index] == "*"
          count += 1 if input_board[row_index - 1][column_index + 1] == "*"
          count += 1 if input_board[row_index - 1][column_index - 1] == "*"
          adjacent_mines(count)
        else
          spot
        end
      end.join
    end
  end

  def self.adjacent_mines(count)
    count == 0 ? ' ' : "#{count}"
  end

  def self.valid_board?(board)
    row_size = board.first.size
    board.each do |line|
      return false if (line.size != row_size) || !valid_line?(line)
    end
    true
  end

  def self.valid_line?(line)
    !!line.match(/^\+-{#{line.size - 2}}\+/) || line.match(/^\|[\s*]{#{line.size - 2}}\|/)
  end
end
inp = ['+---+', '|***|', '|* *|', '|***|', '+---+']

p Board.transform(inp)




