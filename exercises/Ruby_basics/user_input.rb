####################### REPEAT AFTER ME
# puts ">> Type anything you want:"
# input = gets.chomp
# puts input

####################### YOUR AGE IN MONTHS
# puts ">> What is your age in years?"
# age = gets.chomp.to_i
# puts "You are #{age * 12} months old"

####################### PRINT SOMETHING (PART 1)
# puts '>> Do you want me to print something? (y/n)'
# answer = gets.chomp

# answer.downcase == 'y' ? (puts "something") : (puts ' ')

####################### PRINT SOMETHING (PART 2)
# answer = nil
# loop do 
#   puts ">> Do you want to print something? (y/n)"
#   answer = gets.chomp.downcase

#   break if %w(y n).include?(answer)
#   puts ">> Invalid input!  Please enter y or n"
# end

# puts 'something' if answer == 'y'

  # case answer.downcase
  # when 'y'
  #   puts 'something'
  #   break
  # when 'n'
  #   puts ' '
  #   break
  # else
  #   puts ">> Invalid input!  Please enter y or n"
#   end
# end

########################### LAUNCH SCHOOL PRINTER (PART 1)
# answer = nil
# loop do
#   puts '>> How many output lines do you want?  Enter a number >= 3:'
#   answer = gets.chomp.to_i
#   break if answer >= 3
#   puts "That's not enough lines."
# end

# answer.times {puts "Launch School is the best!"}

############################# PASSWORDS
# PASSWORD = 'SecreT'
# loop do
#   puts '>> Please enter your password:'
#   input = gets.chomp

#   break if input == PASSWORD
#   puts ">> Invalid password!"
# end

# puts "Hello"

############################# USER NAME AND PASSWORD
# USERNAME = 'admin'
# PASSWORD = 'SecreT'

# loop do
#   puts ">> Please enter user name:"
#   username = gets.chomp
#   puts ">> Please enter your password:"
#   password = gets.chomp

#   break if username == USERNAME && password == PASSWORD
#   puts ">> Authorization failed!"
# end

# puts "Welcome!"

############################### DIVIDING NUMBERS
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
# numerator = ''
# denominator = ''

# loop do
#   puts '>> Please enter the numberator:'
#   numerator = gets.chomp

#   break if valid_number?(numerator)
#   puts ">> Invalid input.  Only integers are allowed"
# end

# loop do
#   puts '>> Please enter the denominator:'
#   denominator = gets.chomp
  
#   if denominator == '0' 
#     puts "Invalid input.  A denominator of 0 is not allowed."
#   else
#     break if valid_number?(denominator)
#     puts ">> Invalid input.  Only integers are allowed"
#   end
# end

# result = numerator.to_i / denominator.to_i
# puts ">> #{numerator} / #{denominator} is #{result}"

################################### LAUNCH SCHOOL PRINTER (PART 2)
# number_of_lines = nil
# loop do
#   loop do
#     puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
#     number_of_lines = gets.chomp
#     break if number_of_lines.to_i >= 3 || number_of_lines.downcase == 'q'
#     puts ">> That's not enough lines."
#   end
  
#   break if number_of_lines.downcase == 'q'
#   number_of_lines = number_of_lines.to_i
  
#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end

################################### OPPOSITES ATTRACT
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    num = gets.chomp
    return num.to_i if valid_number?(num) && num.to_i != 0
    puts ">> Invalid input.  Only non-zero integers are allowed"
  end
end

num1 = nil
num2 = nil
loop do
  num1 = read_number
  num2 = read_number
  if (num1 > 0 && num2 > 0) || (num1 < 0 && num2 < 0)
    puts ">> Sorry.  One integer must be positive, one must be negative."
    puts ">> Please start over."
  else
    break
  end
end

result = num1 + num2
puts ">> #{num1} + #{num2} = #{result}"

#####################################







  



























