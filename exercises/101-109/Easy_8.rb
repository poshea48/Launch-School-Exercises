############################# SUM OF SUMS
# def sum_of_sums(array)
#   sum = 0
#   1.upto(array.size) do |count|
#     sum += array.slice(0, count).inject(:+)
#   end
#   sum
# end

# p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) #== 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35

############################# MADLIBS
# def madlibs
#   print "Enter a noun:  "
#   noun = gets.chomp
#   print "Enter a verb:  "
#   verb = gets.chomp
#   print "Enter an adjective:  "
#   adjective = gets.chomp
#   print "Enter an adverb:  "
#   adverb = gets.chomp

#   puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?  That's hilarious!"
# end

# madlibs

############################# LEADING SUBSTRINGS
# require 'pry'
# def substrings_at_start(string)
#   new_arry = []
#   array = string.split('')
#   1.upto(array.size) do |count|
#     new_arry << array.slice(0, count).join
#     #binding.pry
#   end
#   new_arry
# end

# # p substrings_at_start('abc') #== ['a', 'ab', 'abc']
# # p substrings_at_start('a') == ['a']
# # p substrings_at_start('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# ############################# ALL SUBSTRINGS
# def substrings(string)
#   new_array = []
#   array = string.split('')
#   loop do
#     new_array << substrings_at_start(array.join)
#     array.shift
#     break if array.empty?
#   end
#   new_array.flatten
# end

# #p substrings('abcde')

# ############################# PALINDROMIC SUBSTRINGS
# def palindromes(string)
#   substring_array = substrings(string)
#   substring_array.select do |word| 
#     word.downcase == word.reverse.downcase && word.size > 1
#   end
# end
# p palindromes('abcd') #== []
# p palindromes('Madam') #== ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

############################# FIZZBUZZ
# def fizzbuzz(start_num, end_num)
#   start_num.upto(end_num) do |num|
#     if num % 3 == 0 && num % 5 == 0
#       print ", FizzBuzz"
#     elsif num % 3 == 0
#       print ", Fizz"
#     elsif num % 5 == 0 
#       print ", Buzz"
#     else
#       print ", #{num}"
#     end
#   end
#   puts ''
# end

# fizzbuzz(1, 15)

############################# DOUBLE CHAR(PART 1)
# def repeater(string)
#   new_string = ''
#   string.each_char do |char|
#     new_string << char * 2
#   end
#   new_string
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

############################# DOUBLE CHAR(PART 2)
# def double_consonants(string)
#   new_string = ''
#   string.each_char do |char|
#     if char.downcase =~ /[a-z]/  && char.downcase =~ /[^aeiou]/
#       new_string << char << char
#     else
#       new_string << char
#     end
#   end
#   new_string
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

############################# CONVERT NUMBER TO REVERSED ARRAY OF DIGITS
# def reversed_number(integer)
#   integer.to_s.reverse.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # Note that zeros get dropped!
# p reversed_number(1) == 1

############################# GET THE MIDDLE CHARACTER
def center_of(string)
  half = string.size / 2
  string.size.even? ? string[half-1, 2] : string[half]
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') == ' '
p center_of('Launch')# == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'


































