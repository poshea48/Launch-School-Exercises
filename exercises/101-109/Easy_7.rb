############################# COMBINE TWO LISTS
# def interleave(array1, array2)
#   new_array = []
#   # array1.each_with_index do |element, index|
#   #   new_array << element << array2[index]
#   # end

#   array1.zip(array2).flatten

#   # loop do
#   #   new_array << array1.delete(array1[0]) << array2.delete(array2[0])
#   #   break if array1.empty?
#   # end
#   #new_array
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

############################# LETTERCASE COUNTER
# require 'pry'
# def letter_case_count(string)
#   # hash = { lowercase: 0, uppercase: 0, neither: 0}
#   # string.split('').each do |char|
#   #   #binding.pry
#   #   if char =~ /[a-z]/
#   #     hash[:lowercase] += 1
#   #   elsif char =~ /[A-Z]/
#   #     hash[:uppercase] += 1
#   #   else
#   #     hash[:neither] += 1
#   #   end
#   # end
#   # hash
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count {|char| char =~ /[a-z]/}
#   counts[:uppercase] = characters.count {|char| char =~ /[A-Z]/}
#   counts[:neither] = characters.count {|char| char =~ /[^A-Za-z]/}
#   counts

# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

############################# CAPITALIZE WORDS
# def word_cap(string)
#   string.split.each {|word| word.capitalize!}.join(' ')
#   #string.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

############################# SWAP CASE
# def swapcase(string)
#   new_string = ''
#   #string.swapcase!
#   string.each_char do |char|
#     char =~ /[A-Z]/ ? new_string << char.downcase : new_string << char.upcase
#   end
#   new_string
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

############################# STAGGERED CAPS (PART 1)
# def staggered_case(string, first_up=true)
#   staggered = string.split('').each_with_index.map do |element, index|
#     if first_up
#       index.even? ? element.upcase : element.downcase
#     else
#       index.even? ? element.downcase : element.upcase
#     end
#   end

#   staggered.join
# end

# p staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

############################# STAGGERED CAPS (PART 2)
# def staggered_case(string, non_alph_count=true)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[^A-Za-z]/
#       result += char
#       need_upper = !need_upper if non_alph_count
#     elsif need_upper
#       result += char.upcase
#       need_upper = !need_upper
#     else
#       result += char.downcase
#       need_upper = !need_upper
#     end
#   end
#   result
# end

# p staggered_case('I Love Launch School!', false) == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

############################# MULTIPLICATIVE AVERAGE
# def show_multiplicative_average(int_array)
#   result = int_array.inject(:*)
#   result = result.to_f / int_array.size
#   puts "The result is " + format('%.3f', result)
# end

# show_multiplicative_average([3, 5])
# #The result is 7.500

# show_multiplicative_average([2, 5, 7, 11, 13, 17])
# #The result is 28361.667

############################# MULTIPLY LISTS
# def multiply_list(arr1, arr2)
#   # new_arr = []
#   # arr1.each_with_index do |number, index|
#   #   new_arr << number * arr2[index]
#   # end
#   # new_arr

#   arr1.zip(arr2).map {|x,y| x * y}
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

############################# MULTIPLY ALL PAIRS
# def multiply_all_pairs(arr1, arr2)
#   new_arr = []
#   arr1.each do |x|
#     arr2.each do |y|
#       new_arr << x * y
#     end
#   end
#   new_arr.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

############################# THE END IS NEAR BUT NOT HERE
def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

def middle_word(string)
  middle = ''
  array = string.split
  if array.size.even? || array.size == 1
    middle << "There is no middle word"
  else
    middle << array[array.size / 2]
  end
  middle
end

p middle_word('in')
p middle_word('in the')
p middle_word('in the train')
p middle_word('in the train stop')
p middle_word('in the train stop I')
p middle_word('in the train stop I will')
p middle_word('in the train stop I will wait')



















































