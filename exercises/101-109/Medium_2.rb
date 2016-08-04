############################# LONGEST SENTENCE
# text = File.read("/Users/pauloshea/four_score.txt")
# #text.gsub!(/\n/, ' ')
# #sentences = text.split(/\.|\?|!/)
# paragraph = text.split(/[.][\n]/)
# p paragraph
# largest_sentence = sentences.max_by {|sentence| sentence.split.size}
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

#puts "#{largest_sentence}"
#puts "Containing #{number_of_words} words"

############################# NOW I KNOW MY ABCs
# require 'pry'
# def block_word?(string)
#   blocks = [['B','O'], ['X','K'], ['D', 'Q'], ['C','P'], ['N','A'], ['G','T'], ['R','E'], ['F', 'S'], ['J', 'W'], ['H','U'], ['V','I'], ['L', 'Y'], ['Z','M']]
#   new_word =[]
#   string.split('').each do |letter|
#     blocks.each do |block|
#       if block.include?(letter)
#         new_word << letter
#         blocks.delete(block)
#       end
#     end
#   end
#   new_word.join == string
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false

############################# LETTERCASE PERCENTAGE RATIO
# def letter_percentages(string)
#   results = {lowercase: 0, uppercase: 0, neither: 0}
#   string.each_char do |char|
#     if char =~ /[a-z]/
#       results[:lowercase] += 1
#     elsif char =~ /[A-Z]/
#       results[:uppercase] += 1
#     else
#       results[:neither] += 1
#     end
#   end
#   results.update(results) {|k,v| v = (v.to_f / string.size) * 100}
# end

#p letter_percentages('abCdef 123') #== { lowercase: 50, uppercase: 10, neither: 40 }
#p letter_percentages('AbCd +Ef') #== { lowercase: 37.5, uppercase: 37.5, neither: 25 }
#p letter_percentages('123') #== { lowercase: 0, uppercase: 0, neither: 100 }   

############################# MATCHING PARENTHESES?
# def balanced?(string)
#   new_string = string.gsub(/[^\(|\)]/, '')
#   par = 0
#   #return false if new_string[0] == ')'
#   new_string.each_char do |char|
#     char == '(' ? par += 1 : par -= 1
#     break if par < 0
#   end
#   par.zero?
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

############################# TRIANGLE SIDES
# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3].sort
#   equal_sides = sides.uniq.size
#   case 
#   when sides[0] + sides[1] < sides[2] || sides.include?(0)
#     :invalid
#   when equal_sides == 1
#     :equilateral
#   when equal_sides == 2
#     :isosceles
#   else
#     :scalene
#   end
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

############################# TRI-ANGLES
# def triangle(ang1, ang2, ang3)
#   angles = [ang1, ang2, ang3]
#   case 
#   when ang1 + ang2 + ang3 != 180 || angles.include?(0)
#     :invalid
#   when angles.include?(90)
#     :right
#   when angles.all? {|angle| angle < 90}
#     :acute
#   else
#     :obtuse
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

############################# UNLUCKY DAYS
# require 'date'
# def friday_13th?(year)
#   # count = 0
#   # (1..12).count do |month|
#   #   count += 1 if Date.new(year, month, 13).friday?
#   # end
#   lucky_days = {}
#   # count
#   (1..12).count do |month|
#     date = Date.new(year, month, 7)
#     lucky_days[month] = day_of_week(date)
#   end
#   lucky_days

# end

# def day_of_week(date)
#   case 
#   when date.monday?
#     "Monday"
#   when date.tuesday?
#     "Tuesday"
#   when date.wednesday?
#     "Wednesday"
#   when date.thursday?
#     "Thursday"
#   when date.friday?
#     "Friday"
#   when date.saturday?
#     "Saturday"
#   else
#     "Sunday"
#   end
# end

# p friday_13th?(2010)# == 3
# #p friday_13th?(1986)# == 1

############################# NEXT FEATURED NUMBER HIGHER THAN A GIVEN VALUE
# require 'pry'
# def featured(number)
#   number += 1
#   # number += 1 until number.odd? && number % 7 == 0

#   # loop do
#   #   number_chars = number.to_s.split('')
#   #   return number if number_chars.uniq == number_chars
#   #   number += 14
#   #   break if number >= 9_876_543_210
#   # end

#   # 'There is no possible number that fulfills those requirements.'
#   loop do
#     break if number.odd? && number % 7 == 0
#     number += 1
#   end
#   loop do
#     return number if repeat_digits?(number)
#     break if number >= 9876543210
#     number += 14
#   end
#   "There is no possible number that fulfills those requirements."
# end

# def repeat_digits?(number)
#   number.to_s.split('').uniq.size == number.to_s.split('').size
# end

# p featured(12) #== 21
# p featured(20) == 21
# p featured(21) #== 35
# p featured(997) == 1029
# p featured(1029) == 1043
# #p featured(999_999) == 1_023_547
# #p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

############################# BUBBLE SORT
# require 'pry'
# def bubble_sort!(array)
#   loop do
#     count = 0
#     0.upto(array.size - 2) do |index|
#       if array[index] > array[index+1] 
#         array[index], array[index + 1] = array[index + 1], array[index]
#         count += 1
#       end
#     end
#     break if count == 0
#   end
#   array
# end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

############################# SUM SQUARE - SQUARE SUM
def sum_square_difference(number)
  ((1..number).inject(:+) ** 2) - ((1..number).inject {|sum, n| sum + x**2})
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150















