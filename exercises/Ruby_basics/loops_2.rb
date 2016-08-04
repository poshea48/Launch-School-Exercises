######################## EVEN OR ODD?
# count = 1

# loop do
#   count.odd? ? (puts "#{count} is odd!") : (puts "#{count} is even!")
#   count += 1
#   break if count == 6
# end

######################## CATCH THE NUMBER
# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(0, 10)
# end

######################### CONDITIONAL LOOP
# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "the loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

############################ GET THE SUM
# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer.  Try again!"
#   end
# end

############################ INSERT NUMBERS
# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
  
#   numbers << input
#   break if numbers.size == 5
# end
# p numbers

############################## EMPTY THE ARRAY
# names = ['Sally', 'Joe', 'Lisa', 'Henry']
# loop do
#   name = names.shift
#   p name
#   break if names.empty?
# end

################################ STOP COUNTING
# 5.times do |index|
#   puts index
#   break if index < 7
# end
# 5, 1

################################ ONLY EVEN
# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

################################# FIRST TO FIVE
# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   next unless number_a == 5 || number_b == 5
#   puts "5 was reached!"
#   break
# end

################################## GREETING
def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings < 4
  greeting
  number_of_greetings += 1
end












