# ############### Runaway Loop
# loop do 
#   puts "just keep printing..."
#   break
# end

################# Loopception
# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

################## Control the loop
#  iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break if iterations > 5 # need to change this to 4
#   iterations += 1
# end

################## Loop on Command
# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer.downcase == 'yes'
# end

################## Say Hello
# say_hello = true

# while say_hello
#   5.times {puts 'Hello!'}
#   say_hello = false
# end

################## Print While
# numbers = []

# while numbers.size < 5
#   numbers << rand(0..99)
# end

# puts numbers

#################### Count Up
# count = 1

# until count > 10
#   puts count
#   count += 1
# end

#################### Print Until
# numbers = [7, 9, 13, 25, 18]
# # count = 0

# # until count == numbers.size
# #   puts numbers[count]
# #   count += 1
# # end
# until numbers.empty?
#   puts numbers.shift
# end

#################### Thats Odd
# for i in 1..100
#   puts i if i.odd?
# end

####################### Great Your Friends
# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends
#   puts "Hello, #{friend}!"
# end








