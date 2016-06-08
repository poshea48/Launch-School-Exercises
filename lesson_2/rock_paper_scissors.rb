VALID_CHOICES = %w(1:rock 2:paper 3:scissors 4:spock 5:lizard)

# def test_method
#   prompt "test message"
# end

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == '1' && second == '5') ||
    (first == '1' && second == '3') ||
    (first == '2' && second == '1') ||
    (first == '2' && second == '4') ||
    (first == '3' && second == '2') ||
    (first == '3' && second == '5') ||
    (first == '4' && second == '3') ||
    (first == '4' && second == '1') ||
    (first == '5' && second == '2') ||
    (first == '5' && second == '4')
end

def win_message(winner, loser)
  if winner == '1' && loser == '5'
    prompt 'rock crushes lizard'
  elsif winner == '1' && loser == '3'
    prompt 'rock crushes scissors'
  elsif winner == '2' && loser == '1'
    prompt 'paper covers rock'
  elsif winner == '2' && loser == '4'
    prompt 'paper disproves spock'
  elsif winner == '3' && loser == '2'
    prompt 'scissors cuts paper'
  elsif winner == '3' && loser == '5'
    prompt 'scissors decapitates lizard'
  elsif winner == '4' && loser == '3'
    prompt 'spock smashes scissors'
  elsif winner == '4' && loser == '1'
    prompt 'spock vaporizes rock'
  elsif winner == '5' && loser == '2'
    prompt 'lizard eats paper'
  elsif winner == '5' && loser == '4'
    prompt 'lizard poisions spock'
  else
    prompt 'not sure'
  end
end

def display_results(player, computer, player_score, computer_score)
  if win?(player, computer)
    prompt "#{win_message(player, computer)} YOU WIN"
    prompt "the score is you: #{player_score} and the computer:
    #{computer_score}"
  elsif win?(computer, player)
    prompt "#{win_message(computer, player)} you lose"
    prompt "the score is you: #{player_score}
      and the computer: #{computer_score}"
  else
    prompt "you tied"
  end
end

score = { player: 0, computer: 0 }
puts ''
puts ''
prompt "Welcome to Rock, Paper, Scissors, Spock, Lizard.
  The first one to 5 wins"
loop do
  choice = ''
  loop do
    puts '---------------------------------------
    -------------------------------------'
    prompt "Choose 1-5 (#{VALID_CHOICES.join(', ')})...shoot"
    choice = gets.chomp.downcase
    if choice == '1' || choice == '2' || choice == '3' ||
       choice == '4' || choice == '5'
      break
    else
      prompt "Thats not a vaild choice, please choose number between 1 and 5"
    end
  end

  computer_choice = VALID_CHOICES.sample
  computer_number = computer_choice[0]

  if win?(choice, computer_number)
    score[:player] += 1
  elsif win?(computer_number, choice)
    score[:computer] += 1
  end
  display_results(choice, computer_number, score[:player], score[:computer])
  puts ''
  if score[:player] == 5
    prompt "YOU WIN, CONGRATULATIONS"
    break
  elsif score[:computer] == 5
    prompt "you lose, GAME OVER"
    break
  end
end

prompt "Thanks for playing, See ya"
