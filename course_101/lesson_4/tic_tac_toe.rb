require 'pry'

def prompt(message)
  puts "=> #{message}"
end

def board(hash)
  puts     "    l     m     r   "
  puts ''
  puts     "       |     |"
  puts "1" + "   #{hash[:l1]}  |  #{hash[:m1]}  |  #{hash[:r1]}"
  puts     "       |     |"
  puts     "  -----+-----+-----"
  puts     "       |     |"
  puts '2' +  "   #{hash[:l2]}  |  #{hash[:m2]}  |  #{hash[:r2]}"
  puts     "       |     |"
  puts     "  -----+-----+-----"
  puts     "       |     |"
  puts '3' +   "   #{hash[:l3]}  |  #{hash[:m3]}  |  #{hash[:r3]}"
  puts     "       |     |"
end

def user_mark_board(hash)
  user = ''
  loop do
    prompt "Choose a square: For left(l1,l2,l3), middle(m1,m2,m3) or right (r1,r2,r3)"
    user = gets.chomp.to_sym
    break if hash[user] == ' '
    prompt "Invalid choice"
  end
  hash[user] = 'X'
end

def computer_mark_board(hash)
  prompt "Now its the computers move..."
  computer = ''
  loop do
    computer = hash.keys.sample
    break if hash[computer] == ' '
  end
  hash[computer] = 'O'
end 

def winner?(hash, mark) 
  (hash[:l1] == mark && hash[:l2] == mark && hash[:l3] == mark) ||
  (hash[:l1] == mark && hash[:m1] == mark && hash[:r1] == mark) ||
  (hash[:l1] == mark && hash[:m2] == mark && hash[:r3] == mark) ||
  (hash[:l2] == mark && hash[:m2] == mark && hash[:r2] == mark) ||
  (hash[:l3] == mark && hash[:m3] == mark && hash[:r3] == mark) ||
  (hash[:l3] == mark && hash[:m2] == mark && hash[:r1] == mark) ||
  (hash[:m1] == mark && hash[:m2] == mark && hash[:m3] == mark) ||
  (hash[:r1] == mark && hash[:r2] == mark && hash[:r3] == mark) 
  
end

user_score = 0
computer_score = 0


prompt "Welcome to Tic Tac Toe"

loop do
 choices = {
  :l1 => ' ',
  :l2 => ' ',
  :l3 => ' ',
  :m1 => ' ',
  :m2 => ' ',
  :m3 => ' ',
  :r1 => ' ',
  :r2 => ' ',
  :r3 => ' '
  }
  
  board(choices)
  
  loop do
    user_mark_board(choices)
    
    if winner?(choices, 'X')
      prompt "You win"
      user_score += 1
      break
    elsif !choices.has_value?(' ')
      prompt "You tied"
      break
    end
    
    computer_mark_board(choices)

    if winner?(choices, 'O')
      prompt "You lose"
      computer_score += 1
      break
    elsif !choices.has_value?(' ')
      prompt "You tied"
      break
    end
    board(choices)
  end
  board(choices)
  prompt "The score is, You: #{user_score} and the Computer: #{computer_score}"
  prompt "Would you like to play again"
  again = gets.chomp
  break unless again.include?('y')
end

prompt "Goodbye, thanks for playing"





