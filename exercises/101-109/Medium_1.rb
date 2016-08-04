############################# ROTATION (PART1)
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# # # p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
# # # p rotate_array(['a', 'b', 'c']) #== ['b', 'c', 'a']
# # # p rotate_array(['a']) #== ['a']

# # # x = [1, 2, 3, 4]
# # # p rotate_array(x) == [2, 3, 4, 1]   # => true
# # # p x #== [1, 2, 3, 4]  

# # def rotate_string(string)
# #   rotate_array(string.chars).join
# # end

# # p rotate_string('how to lose')

# # def rotate_integer(number)
# #   rotate_array(number.to_s.chars).join
# # end
# # p rotate_integer(3580)

# ############################# ROTATION (PART 2)
# def rotate_rightmost_digits(number, n)
#   number_array = number.to_s.chars
#   number_array[-n..-1] = rotate_array(number_array[-n..-1])
#   number_array.join.to_i
# end

# # p rotate_rightmost_digits(735291, 1) #== 735291
# # p rotate_rightmost_digits(735291, 2) #== 735219
# # p rotate_rightmost_digits(735291, 3) == 735912
# # p rotate_rightmost_digits(735291, 4) == 732915  
# # p rotate_rightmost_digits(735291, 5) == 752913
# # p rotate_rightmost_digits(735291, 6) == 352917

# ############################# ROTATION (PART 3)
# def max_rotation(number)
#   (number.to_s.size).downto(1) do |count|
#     number = rotate_rightmost_digits(number, count)
#   end
#   number
# end

# p max_rotation(735291) #== 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

############################# 1000 LIGHTS
# def lights_on(lights)
#   lights.keys.select {|key| lights[key] = 'on'}
# end

# def toggle_lights(lights)
#   1.upto(lights.size) do |round_number|
#     lights.each do |key, value|
#       if key % round_number == 0
#         value == 'off' ? lights[key] = 'on' : lights[position] = 'off'
#       end
#     end
#   end
# end


# lights = Hash.new
# 1.upto(1000) {|number| lights[number] = 'off'}

############################# DIAMONDS
# def diamond(size)
#   puts ''
#   half = size / 2
#   (1..size).each do |star|
#     make_line(star, size) if star.odd?
#   end
#   (1..size-1).reverse_each do |star|
#     make_line(star, size) if star.odd?
#   end
# end

# def make_line(star, size)
#   spaces = (size - star) / 2 
#   puts (" " * spaces) + "#{'*'* star}" + (" " * spaces)
# end

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   if stars == 1
#     puts stars.center(grid_size)
#   else
#     puts "*" + (' ' * (number_of_stars - 2)) + '*'
#   end
# end

# def diamond(grid_size)
#   max_distance = (grid_size -1) / 2
#   max_distance.downto(0) {|distance| print_row(grid_size, distance)}
#   1.upto(max_distance)   {|distance| print_row(grid_size, distance)}
# end

#print_row(9, 4)

 #diamond(5)
# diamond(1)
# diamond(3)
# diamond(9)

############################# STACK MACHINE INTERPRETATION
# require 'pry'
# #ALPHA_DIGITS = %w(-9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9)
# def minilang(string)
#   register = 0
#   stack = []
#   string.split.each do |word|
#     case word
#       when 'PUSH'
#         stack.push(register)
#       when 'ADD'
#         register += stack.pop
#       when 'SUB'
#         register -= stack.pop
#       when 'MULT'
#         register *= stack.pop
#       when 'DIV'
#         register /= stack.pop
#       when 'MOD'
#         register %= stack.pop
#       when 'POP'    
#         register = stack.pop 
#       when 'PRINT'
#         puts register
#       else
#         register = word.to_i
#     end
#   end
# end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
#minilang('5 PUSH POP PRINT')
#minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
#minilang('3 PUSH 5 MOD PUSH 7 PUSH 3 PUSH 4 PUSH 5 MULT ADD SUB DIV PRINT')# ADD PUSH 7 SUB PRINT')# SUB PUSH 5 PUSH 3 MOD DIV PRINT')
# 5
# 10
# 4
# 7
#minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

#minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

#minilang('-3 PUSH 5 SUB PRINT')
# 8

#minilang('6 PUSH')
# (nothing printed; no PRINT commands)

############################# WORD TO DIGIT
# require 'pry'
# ALPHA_NUMS = %w(zero one two three four five six seven eight nine ten)

# def word_to_digit(string)
#   new_string = []
#   string.split.each do |char|
#     ALPHA_NUMS.include?(/char/) ? new_string << char = ALPHA_NUMS.index(char) : new_string << char 
#     #binding.pry
#   end
#   new_string.join(' ')
# end

# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end


# p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

############################# FIBONACCI NUMBERS (RECURSION)
# def fibonacci(nth)
#   nth > 2 ? fibonacci(nth - 1) + fibonacci(nth - 2) : 1
# end

# p fibonacci(1)# == 1
# p fibonacci(2) #== 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

############################# FIBONACCI NUMBERS (PROCEDURAL)
def fibonacci(nth)
  fib_num = [1,1]
  3.upto(nth) do |number|
    fib_num << fib_num[0] + fib_num[-1]
    fib_num.shift
  end
  fib_num.last
  
  # first, last = [1,1]
  # 3.upto(nth) do
  #   first, last = [last, first + last]
  # end
  # last
end

#p fibonacci(2)
#p fibonacci(20) #== 6765
#p fibonacci(100) #== 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501

############################# FIBONACCI NUMBERS (LAST DIGIT)
require 'pry'
def fibonacci_last(nth)
  #fibonacci(nth).to_s[-1].to_i
  last_2 = [1,1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
    #binding.pry
  end
  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4















