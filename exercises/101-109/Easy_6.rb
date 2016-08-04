############################# CUTE ANGLES
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
# DEGREE = "\xC2\xB0"
# def dms(angle)
#   #60mins / 1 degree
#   total_seconds = (angle.abs * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   mins, secs = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   #angle < 0 ? degrees * -1 : degrees
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), mins, secs)
# end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# p dms(-76.73)

# ############################# DELETE VOWELS
# def remove_vowels(array)
#   array.map {|word| word.delete('aeiouAEIOU')}
# end  

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

############################# FIBONACCI NUMBER LOCATION BY LENGTH
# require 'pry'
# def fibonacci(num)
#   fib_series = [1,1]
#   index = 0
#   while index < num -1
#     if index == 0
#       fib_series
#     else
#       fib_series << (fib_series[index] + fib_series[index-1])
#     end
#     index += 1
#   end
#   fib_series
# end

# def find_fibonacci_index_by_length(length)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fib = first + second
#     break if fib.to_s.size >= length

#     first = second
#     second = fib
#   end
#   index
#   # fib_series = [1,1]
#   # index = 0
#   # next_fib = nil
#   # loop do
#   #   if index == 0
#   #     fib_series
#   #   else
#   #     next_fib = fib_series[index] + fib_series[index-1]
#   #     fib_series << next_fib
#   #   end
#   #   index += 1
#   #   break if next_fib.to_s.size >= length
#   #   #binding.pry
#   # end
#   # fib_series.size
# end
# #p fibonacci(100)
# p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

############################# REVERSED ARRAYS (PART 1)
# def reversed!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end
#   array

#   # new_array = []
#   # while !array.empty?
#   #   new_array.unshift(array.shift)
#   # end
#   # new_array.each {|element| array << element}
#   # array
# end

# list = %w(a b c d e)
# reversed!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = [1,2,3,4]
# result = reversed!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# p list.object_id == result.object_id

############################# REVERSED ARRAYS (PART 2)
# def reversed(array)
#   new_array = array.inject do |memo, element| 
#     memo << array.unshift(element)
#   end

    # result_array = []
    # array.reverse_each {|element| result_array << element}
    # result_array


  # new_array = []
  # while !array.empty?
  #   new_array.unshift(array.shift)
  # end
  # new_array
#end

#p reversed([1,2,3,4]) #== [4,3,2,1]          # => true
# p reversed(%w(a b c d e)) == %w(e d c b a)  # => true
# p reversed(['abc']) == ['abc']              # => true
# p reversed([]) == []                        # => true

# p list = [1, 2, 3]                      # => [1, 2, 3]
# p new_list = reversed(list)              # => [3, 2, 1]
# p list.object_id != new_list.object_id  # => true
# p list #== [1, 2, 3]                     # => true
# p new_list == [3, 2, 1] 

############################# COMBINING ARRAYS
# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
#   #arr1 | arr2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

############################# HALVSIES
# def halvsies(array)
#   half = array.size / 2
#   if array.size.even?
#     arr1 = array[0..half-1]
#     arr2 = array[half..-1]
#   else
#     arr1 = array[0..half]
#     arr2 = array[half + 1..-1]
#   end
#   [arr1, arr2]

#   first_half = array.slice(0, (array.size / 2.0).ceil)
#   second_half = array.slice(first_half.size, array.size - first_half.size)
#   [first_half, second_half]
# end

# p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
# p halvsies([5]) #== [[5], []]
# p halvsies([]) #== [[], []]

############################# FIND THE DUPLICATE
# def find_dup(array)
#   hash = Hash.new(0)
#   array.each {|value| hash[value] += 1}
#   hash.key(2)
# end

# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15, 
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65, 
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29, 
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,  
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82, 
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70, 
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22, 
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,  
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

############################# DOES MY LIST INCLUDE THIS?
# def include?(array, search_value)
#   #array.each {|value| return true if value == search_value}
#   !!array.find_index(search_value)
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

############################# RIGHT TRIANGLES
def triangle(sides)
  puts ''
  lines = 1
  while lines <= sides
    puts ' ' * (sides-lines) + ('*' * lines)
    lines += 1
  end
end

triangle(5)
triangle(9)



























