############################# REPEAT YOURSELF
# def repeat(phrase, number)
#   number.times {puts phrase}
# end

# repeat('Hello', 3)

############################# ODD
#def is_odd?(number)
#   # number = number.abs.to_i
#   # number % 2 == 0 ? false : true
#   number % 2 == 1

# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(7.1)  # => false
# puts is_odd?(-5.0) # => true

############################# LIST OF DIGITS
# def digit_list(number)
#   number.to_s.split('').map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

############################# HOW MANY?
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurrences(array)
#   occurrences = Hash.new(0)
#   array.each {|element| occurrences[element] += 1}
#   occurrences.each {|element, count| puts "#{element} => #{count}"}
# end

# # def count_occurrences(array)
# #   occurrences = {}

# #   array.uniq.each do |element|
# #     occurrences[element] = array.count(element)
# #   end

# #   occurrences.each do |element, count|
# #     puts "#{element} => #{count}"
# #   end
# # end

# p count_occurrences(vehicles)

############################# REVERSE IT (PART 1)
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

############################# REVERSE IT (PART 2)
# def reverse_words(string)
#   new_string = []
#   string.split.each do |word| 
#     word.size >=5 ? new_string << word.reverse : new_string << word
#   end
#   new_string.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

############################# STRINGY STRINGS
# def stringy(number, other=1)
#   string = ''
#   counter = 0
#   if other == 0
#     while counter <= number - 1
#       counter.even? ? string << '0' : string << '1'
#       counter += 1
#     end
#   else
#     while counter <= number - 1
#       counter.even? ? string << '1' : string << '0'
#       counter += 1
#     end
#   end
#   string
# end
# puts stringy(6,0) #== '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

############################# ARRAY AVERAGE
# def average(int_arr)
#   # sum = 0
#   # int_arr.each {|i| sum += i }
#   # sum.to_f / int_arr.size
#   sum = int_arr.inject(:+)
#   (sum.to_f / int_arr.size).round(2)
# end

# puts average([1, 5, 87, 45, 8, 8]) #== 25
# puts average([9, 47, 23, 95, 16, 52]) #== 40

############################# SUM OF DIGITS
# def sum(int)
#   # int_arr = int.to_s.split('').map {|i| i.to_i}
#   # sum = int_arr.inject(:+)
#   int.to_s.split('').map(&:to_i).inject(:+)
# end

# puts sum(23) #== 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

############################# WHATS MY BONUS?
def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000































































