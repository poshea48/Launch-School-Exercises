# My way
# require 'pry'

# def prompt(message)
#   puts "=> #{message}"
# end

# def board(hash)
#   puts     "    l     m     r   "
#   puts ''
#   puts     "       |     |"
#   puts "1" + "   #{hash[:l1]}  |  #{hash[:m1]}  |  #{hash[:r1]}"
#   puts     "       |     |"
#   puts     "  -----+-----+-----"
#   puts     "       |     |"
#   puts '2' +  "   #{hash[:l2]}  |  #{hash[:m2]}  |  #{hash[:r2]}"
#   puts     "       |     |"
#   puts     "  -----+-----+-----"
#   puts     "       |     |"
#   puts '3' +   "   #{hash[:l3]}  |  #{hash[:m3]}  |  #{hash[:r3]}"
#   puts     "       |     |"
# end

# def user_mark_board(hash)
#   user = ''
#   loop do
#     prompt "Choose a square: For left(l1,l2,l3), middle(m1,m2,m3) or
# =>          right (r1,r2,r3)"
#     user = gets.chomp.to_sym
#     break if hash[user] == ' '
#     prompt "Invalid choice"
#   end
#   hash[user] = 'X'
# end

# def computer_mark_board(hash)
#   prompt "Now its the computers move..."
#   computer = ''
#   loop do
#     computer = hash.keys.sample
#     break if hash[computer] == ' '
#   end
#   hash[computer] = 'O'
# end

# def winner?(hash, mark)
#   (hash[:l1] == mark && hash[:l2] == mark && hash[:l3] == mark) ||
#   (hash[:l1] == mark && hash[:m1] == mark && hash[:r1] == mark) ||
#   (hash[:l1] == mark && hash[:m2] == mark && hash[:r3] == mark) ||
#   (hash[:l2] == mark && hash[:m2] == mark && hash[:r2] == mark) ||
#   (hash[:l3] == mark && hash[:m3] == mark && hash[:r3] == mark) ||
#   (hash[:l3] == mark && hash[:m2] == mark && hash[:r1] == mark) ||
#   (hash[:m1] == mark && hash[:m2] == mark && hash[:m3] == mark) ||
#   (hash[:r1] == mark && hash[:r2] == mark && hash[:r3] == mark)
# end

# user_score = 0
# computer_score = 0

# prompt "Welcome to Tic Tac Toe"

# loop do
#  choices = {
#   :l1 => ' ',
#   :l2 => ' ',
#   :l3 => ' ',
#   :m1 => ' ',
#   :m2 => ' ',
#   :m3 => ' ',
#   :r1 => ' ',
#   :r2 => ' ',
#   :r3 => ' '
#   }
#   board(choices)
#   loop do
#     user_mark_board(choices)
#     if winner?(choices, 'X')
#       prompt "You win"
#       user_score += 1
#       break
#     elsif !choices.has_value?(' ')
#       prompt "You tied"
#       break
#     end
#     computer_mark_board(choices)

#     if winner?(choices, 'O')
#       prompt "You lose"
#       computer_score += 1
#       break
#     elsif !choices.has_value?(' ')
#       prompt "You tied"
#       break
#     end
#     board(choices)
#   end
#   board(choices)
#   prompt "The score is, You: #{user_score}
#           and the Computer: #{computer_score}"
#   prompt "Would you like to play again"
#   again = gets.chomp
#   break unless again.include?('y')
# end

# prompt "Goodbye, thanks for playing"

# Launch way
require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(message)
  puts "=> #{message}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  # system 'clear'
  puts "You're a #{PLAYER_MARKER} and Computer is an #{COMPUTER_MARKER}"
  puts ''
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def intialize_board
  new_board = {}
  (1..9).each { |number| new_board[number] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, joiner=', ', ender='or')
  arr.size > 1 ? arr[-1] = "#{ender} #{arr.last}" : arr
  arr.join(joiner)
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "That is not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  prompt "Now the computer will choose..."
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  if brd[5] == INITIAL_MARKER
    square = 5
  end
  if !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, val)
  val.even? ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "You"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "The Computer"
    end
  end
  nil
end

def alternate_player(val)
  val + 1
end

user_score = 0
computer_score = 0
loop do
  # system 'clear'
  prompt "The first one to 5 wins."
  prompt "The score is you: #{user_score}, and the computer: #{computer_score}"
  puts ""
  prompt "HERE WE GO......"
  current_player = 0
  board = intialize_board
  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    detect_winner(board) == "You" ? user_score += 1 : computer_score += 1
  else
    prompt "Its a tie"
  end

  display_board(board)
  if user_score == 5
    prompt "You have conqured the computer."
    break
  elsif computer_score == 5
    prompt "The computer has conqured you."
    break
  end
end

prompt "Thanks for playing, Goodbye"
