############################# MADLIBS REVISITED
# def madlibs(text_file)
#   puts "Welcome to my adlibs, get ready..."
#   print "Give me a proper noun:  "
#   proper_noun1 = gets.chomp
  
#   print "Now I want an adjective:  "
#   adjective1 = gets.chomp
  
#   print "Number please:  "
#   number1 = gets.chomp
  
#   print "A noun would fit in nicely here:  "
#   noun1 = gets.chomp
  
#   print "What is your favorite food:  "
#   food1 = gets.chomp
  
#   print "An adverb now:  "
#   adverb1 = gets.chomp
  
#   print "A mood that you usually do not display:  "
#   mood1 = gets.chomp
  
#   print "The name of a woman:  "
#   womans_name1 = gets.chomp
  
#   print "I need another noun:  "
#   noun2 = gets.chomp
  
#   print "Verb me please:  "
#   verb1 = gets.chomp
  
#   print "Adjective time:  "
#   adjective2 = gets.chomp
  
#   print "Give me an adjective:  "
#   adjective3 = gets.chomp
# #File.read(text_file)
# File.open(text_file, ) do |file|
#   file.each do |line|
#     puts format(line, proper_noun1: proper_noun1,
#                       adjective1:   adjective1,
#                       number1:      number1,
#                       noun1:        noun1,
#                       food1:        food1,
#                       adverb1:      adverb1,
#                       mood1:        mood1,
#                       womans_name1: womans_name1,
#                       noun2:        noun2,
#                       verb1:        verb1,
#                       adjective2:   adjective2,
#                       adjective3:   adjective3)
#   end
# end
# end

# p madlibs('/Users/pauloshea/madlib.txt')

############################# SEEING STARS
#def star(grid)
  # midline = "#{'*' * grid}"
  # spaces = grid - 3
  # loop do
  #   make_line(grid, spaces)
  #   spaces -= 2
  #   break if spaces < 0
  # end
  # puts midline
  # spaces = 0
  # loop do 
  #   make_line(grid, spaces)
  #   spaces += 2
  #   break if spaces > grid -2
  # end
# def star(grid)
#   max_distance = (grid - 1) / 2
#   max_distance.downto(1) {|distance| print_row(grid, distance)}
#   puts "*" * grid
#   1.upto(max_distance) {|distance| print_row(grid, distance)}
# end

# def print_row(grid, distance_from_center)
#   number_of_spaces = distance_from_center - 1
#   spaces = ' ' * number_of_spaces
#   output = Array.new(3, '*').join(spaces)
#   puts output.center(grid)
# end

# def make_line(grid, mid_space)
#   puts "*#{' ' * (mid_space / 2)}*#{' ' * (mid_space / 2)}*".center(grid)
# end

# star(7)
# star(9)
# star(57)

############################# TRANSPOSE 3 x 3
# def transpose(matrix)
#   result = []

#   (0...matrix[0].size).each do |column_index|
#     new_row = (0...matrix.size).map do |row_index|
#       matrix[row_index][column_index]
#     end
#     result << new_row
#   end
#   result
# end

# # matrix = [
# #   [1, 5, 8],
# #   [4, 7, 2],
# #   [3, 9, 6]
# # ]

# # new_matrix = transpose(matrix)

# # new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# # matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

############################# ROTATING MATRICES
# def rotate90(matrix, degrees)
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   result = []
#   degree_count = 0
#   loop do
#     (0...number_of_columns).each do |column_index|
#       new_row = (0...number_of_rows).map do |row_index|
#         matrix[row_index][column_index]
#       end
#       result << new_row.reverse
#       degree_count += 90
#     end
#     break if degree_count = degrees
#   end

#   result
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# # new_matrix1 = rotate90(matrix1)
# # new_matrix2 = rotate90(matrix2)
# # new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# # p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# # p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# # p new_matrix3 == matrix2
# p rotate90(matrix1, 90)
# p rotate90(matrix2, 90)
# p rotate90(matrix2, 180)
# p rotate90(matrix2, 270)
# p rotate90(matrix2, 360)

############################# PERMUTATIONS
# def permutations(array)
#   return [array] if array.size == 1
#   result = []
#   counter = 0
#   while counter < (array.size - 1)
#     permutations(array[0..(array.size - 1)])
#     if array.size.even? 
#       array[counter], array[array.size -1] = array[array.size - 1], array[counter]
#     else
#       array[0], array[array.size - 1] = array[array.size - 1], array[0]
#     end
#     counter += 1
#   end
#     permutations(array[0..(array.size - 1)])
# end

# #   array.each_with_index do |element, index|
# #     sub_array = array[0...index] + array[(index + 1)..-1]
# #     sub_permutations = permutations(sub_array)
# #     sub_permutations.each do |permutation|
# #       result << [element] + permutation
# #     end
# #   end
# #   result
# # end

# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])

############################# FIX THE BUG
# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size > 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])    
# p my_method([3, 4])
# p my_method([5, 6, 7])

# After the if there were no other conditions given so it returns nil

############################# MERGE SORTED LISTS
# def merge(arr1, arr2)
#   new_array = arr1 + arr2 
#   loop do
#     count = 0
#     index = 0
#     while index < new_array.size - 1
#       if new_array[index] > new_array[index + 1]
#         new_array[index], new_array[index + 1] = new_array[index + 1], new_array[index]
#         count += 1
#       end
#       index += 1
#     end
#     break if count == 0
#   end
#     new_array
# end

# # p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# # p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# # p merge([], [1, 4, 5]) == [1, 4, 5]
# # p merge([1, 4, 5], []) == [1, 4, 5]

# ############################# MERGER SORT
# def merge_sort(array)
#   return array if array.size == 1

#   sub_array1 = array[0...array.size / 2]
#   sub_array2 = array[array.size / 2..-1]

#   sub_array1 = merge_sort(sub_array1)
#   sub_array2 = merge_sort(sub_array2)

#   merge(sub_array1, sub_array2)
# end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

############################# EGYPTIAN FRACTIONS
require 'pry'
def egyptian(number)
  array = []
  denom = 1
  until number == 0
    unit_fraction = Rational(1, denom)
    if unit_fraction <= number
      number -= unit_fraction
      array << denom
    end
    denom += 1
  end
  array
end

def unegyptian(array)
  array.inject(Rational(0)) { |sum, denom| sum + Rational(1, denom)}
end

# egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# egyptian(Rational(3, 1))

p unegyptian(egyptian(Rational(1, 2))) #== Rational(1, 2)
p unegyptian([1,2,3,6])



















