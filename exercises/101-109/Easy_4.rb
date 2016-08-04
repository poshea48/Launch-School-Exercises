################################### Short Long Short
# def short_long_short(str1, str2)
#   str1.size > str2.size ? (str2 + str1 + str2) : (str1 + str2 + str1)
# end

# p short_long_short('abc', 'defgh')
# p short_long_short('abcde', 'fgh') 
# p short_long_short('', 'xyz')

################################### What Century is That?
# def ending(num)
#   return "#{num}th" if [11, 12, 13].include? num % 100
#   last_digit = num % 10

#   case last_digit
#   when 1 then "#{num}st"
#   when 2 then "#{num}nd"
#   when 3 then "#{num}rd"
#   else "#{num}th"
#   end
# end

# def century(year)
#   x = year / 100
#   if x == 0
#     x = 1
#   elsif year % 100 != 0
#     x = x + 1
#   else
#     x
#   end
#   ending(x)
# end

# p century(2000) 
# p century(2001) 
# p century(1965) 
# p century(256) 
# p century(5) 
# p century(10103) 
# p century(1052) 
# p century(1127) 
# p century(11201)

############################# Leap years (Part 1) (Part 2)
# def leap_year?(year)
#   if year < 1752
#     year % 4 == 0
#   else
#     if year % 400 == 0
#       true
#     elsif year % 100 == 0
#       false
#     else
#       year % 4 == 0 
#     end
#   end
# end

# p leap_year?(2016) #== true
# p leap_year?(2015) #== false
# p leap_year?(2100) #== false 
# p leap_year?(2400) #== true
# p leap_year?(240000) #== true
# p leap_year?(240001) #== false
# p leap_year?(2000) #== true
# p leap_year?(1900) #== false
# p leap_year?(1752) #== true
# p leap_year?(1700) #== false
# p leap_year?(1) #== false
# p leap_year?(100) #== false
# p leap_year?(400) #== true

# It was interesting to discover that 3 leap years are removed
# every 400 years to make up for the accumulated error that occured from the 
# Julian calendar.  That accumulation occurs since a tropical year is less than
# 365.25 days.  Pretty fascinating the math and logic for this was done so long ago

################################# Multiples of 3 and 5
# def multisum(num)
#   multiples = []
#   sum = 0
#   # (1..num).inject {|sum, i| sum + i if (i % 3 == 0 || i % 5 == 0) } 
#   (1..num).each {|i| multiples << i if (i % 3 == 0) || (i % 5 == 0) }
#   multiples.each {|i| sum += i}
#   sum
# end

# p multisum(3) #== 3
# p multisum(5) #== 8
# p multisum(10) #== 33
# p multisum(1000) #== 234168

################################## Running Totals
# def running_total(arr)
#   new_arr = []
#   arr.each {|i| new_arr.empty? ? new_arr << i : new_arr << i + new_arr.last}
#   new_arr
#   #arr.map {|i| new_arr += i}
# end

# p running_total([2, 5, 13]) #== [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
# p running_total([3]) #== #[3]
# p running_total([]) #== #[]

################################## Convert a String to a Number!
#DIGITS = {'0' => 0,'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

# def string_to_integer(string)
#   digits = string.chars.map {|c| DIGITS[c]}
#   value = 0
#   digits.each {|digit| value = 10 * value + digit}
#   value
# end


# # p string_to_integer('4321') # == 4321
# # p string_to_integer('570') #== 570

# # def hexadecimal_to_integer(string)
# #   string.hex
# # end
# # p hexadecimal_to_integer('4D9f') #== 19871

#################################### Convert a String to a Signed Number!
# def string_to_signed_integer(string)
#   string_minus_sign = string.delete('-').delete('+')
#   string.include?('-') ? (0 - string_to_integer(string_minus_sign)) : string_to_integer(string_minus_sign)
# end

# p string_to_signed_integer('4321') #== 4321
# p string_to_signed_integer('-570') #== -570
# p string_to_signed_integer('+100') #== 100

####################################### Convert a Number to a String!
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
def integer_to_string(num)
  result = ''
  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end

  result
  # arr = []
  # arr << num
  # arr.join
end 

#p integer_to_string(4321) #== '4321'
# p integer_to_string(0) #== '0'
# p integer_to_string(5000) #== '5000'

# Mutating String methods (no !) => clear, concat, insert, prepend, replace
# Mutationg String methonds, end in ! (no non_mutate) => none
# Mutating Array methods => <<, clear, delete, pop, push, replace, shift, unshift
# Mutating Hash methods => hsh[key] = value, clear, delete, replace, shift, 

########################################## Convert a Signed Number to a String!
def signed_integer_to_string(num)
  absolute = integer_to_string(num.abs)
  case num <=> 0
   when -1 then "-" + absolute
   when +1 then "+" + absolute
   else         absolute
  end
  # if num < 0
  #   "-" + integer_to_string(num.abs)
  # elsif num == 0
  #   "0"
  # else
  #   "+" + integer_to_string(num)
  # end
end

 p signed_integer_to_string(4321) #== '+4321'
 p signed_integer_to_string(-123) #== '-123'
 p signed_integer_to_string(0) #== '0'



