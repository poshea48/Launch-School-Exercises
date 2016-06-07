VALID_CHOICES = %w(rock paper scissors)

# def test_method
#   prompt "test message"
# end

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt 'You win'
  elsif win?(computer, player)
    prompt 'you lose'
  else
    prompt 'you tied'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}...shoot"
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "Thats not a vaild choice"
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt "computer shows #{computer_choice}."

  display_results(choice, computer_choice)

  prompt 'Would you like to play again?'
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt "Thanks for playing, See ya"
