############################### Searching 101
# puts "Enter the 1st number:"
# first = gets.chomp.to_i
# puts "Enter the 2nd number:"
# second = gets.chomp.to_i
# puts "Enter the 3rd number:"
# third = gets.chomp.to_i
# puts "Enter the 4th number:"
# fourth = gets.chomp.to_i
# puts "Enter the 5th number:"
# fifth = gets.chomp.to_i
# puts "Enter the last number:"
# last = gets.chomp.to_i

# arr = []
# arr << first << second << third << fourth << fifth

# if arr.include?(last)
#   puts "The number #{last} appears in #{arr}"
# else
#   puts "The number #{last} does not appear in #{arr}"
# end

###################################### Arithmetic Integer
# def operations(num1, num2)
#   puts "#{num1} + #{num2} = #{num1 + num2}"
#   puts "#{num1} - #{num2} = #{num1 - num2}"
#   puts "#{num1} * #{num2} = #{num1 * num2}"
#   puts "#{num1} / #{num2} = #{num1 / num2}"
#   puts "#{num1} % #{num2} = #{num1 % num2}"
#   puts "#{num1} ** #{num2} = #{num1 ** num2}"
# end

# puts "Enter the first number:"
# first = gets.chomp.to_i
# puts "Enter the second number:"
# second = gets.chomp.to_i
# p operations(first, second)

#################################### Counting the Number of Characters

# print "Please write word or multiple words:"
# string = gets.chomp
# chars = string.split.join('').size
# puts "There are #{chars} characters in #{string}"

###################################### Multiplying Two Numbers
# def multiply(num1, num2)
#   num1 * num2
# end

# # p multiply([5.2, 4,4], 3)

##################################### Squaring an Argument
# def square(num)
#   multiply(num, num)
# end

# def power(num, n)
#   multiply(num, (num ** (n-1)))
#   # if n < 1 
#   #   puts "not valid"
#   # elsif n == 1
#   #   multiply(num, num)
#   # elsif n.odd?
#   #   (multiply(num,num) ** (n/2)) * num
#   # else
#   #   multiply(num,num) ** (n/2)
#   # end
# end

# p power(3,8)

###################################### Exclusive Or
# def xor?(arg1, arg2)
#   if arg1 && arg2
#     false
#   elsif arg1 || arg2
#     true
#   else
#     false
#   end
# end

# p xor?(5.even?, 4.even?) 
# p xor?(5.odd?, 4.odd?) 
# p xor?(5.odd?, 4.even?) 
# p xor?(5.even?, 4.odd?) 

######################################## Odd Lists
# def oddities(arr)
#   new_arr = []
#   arr.each_with_index {|x, idx| new_arr << x if idx.even?}
#   new_arr
# end

# p oddities([2, 3, 4, 5, 6]) 
# p oddities(['abc', 'def'])
# p oddities([123]) 
# p oddities([]) 

# def evenies(arr)
#   new_arr = []
#   idx = 1
#   while idx < arr.size
#     new_arr << arr[idx]
#     idx += 2
#   end
#   new_arr
# end

# p evenies([2, 3, 4, 5, 6]) 
# p evenies(['abc', 'def'])
# p evenies([123]) 
# p evenies([])

################################ Palindromic Strings (Part 1)
def palindrome?(string)
  string == string.reverse
end

# # p palindrome?('madam') 
# # p palindrome?('Madam')           # (case matters)
# # p palindrome?("madam i'm adam") # (all characters matter)
# # p palindrome?('356653') 

# def palindrome_arr?(array)
#   new_arr = array.reverse
#   array == new_arr
# end

# # p palindrome_arr?(['take', 'me', 'take'])
# # p palindrome_arr?(['hello', 'to', 'me', 'hello'])

# def either_pal?(phrase)
#   palindrome?(phrase) || palindrome_arr?(phrase)
# end

# p either_pal?("madam")
# p either_pal?(['when', 'hello', 'when'])
# p either_pal?('take away now')
# p either_pal?(['time', 'to', 'go'])

## Palidromic Strings (Part 2)
# def real_palindrome?(string)
#   string = string.delete('^a-z0-9')
#   #string.gsub!(/\W|/, '')
#   palindrome?(string.downcase)
# end

# p real_palindrome?('madam')
# p real_palindrome?('Madam')           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
# p real_palindrome?('3_56_653') 
# p real_palindrome?('356a653') 
# p real_palindrome?('123ab321')

#################################### Palindromic Numbers
def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

p palindromic_number?(034543)
p palindromic_number?(123210) 
p palindromic_number?(22) 
p palindromic_number?(5)











