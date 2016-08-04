# ############################# WELCOME STRANGER
# def greetings(array, hash)
#   puts "Hello, #{array.join(' ')}!  Nice to have a #{hash.values.join(' ')} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.

############################# DOUBLE DOUBLES
# def double_double?(number)
#   number = number.to_s
#   half = number.size / 2
    
#   left_digits = number[0, half].to_i
#   right_digits = number[half, half].to_i

#   left_digits == right_digits && number.size.even?
# end

# def twice(number)
#   double_double?(number) ? number : number * 2
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789

############################# ALWAYS RETURN NEGATIVE
# def negative(number)
#   number > 0 ? number * -1 : number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0 

############################# COUNTING UP
# def sequence(number)
#   #1.upto(number).to_a
#   number > 0 ? (1..number).to_a : 1.downto(number).to_a
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(-3) #== [1, 2, 3]
# p sequence(1) == [1]

############################# UPPERCASE CHECK
# def uppercase?(string)
#   #string =~ /[a-z]/ ? false : true
#   string == string.upcase && !string.empty?
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') #== true

############################# HOW LONG ARE YOU?
# def word_lengths(string)
#   string.split.map {|word| "#{word} #{word.size}"}
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

############################# NAME SWAPPING
# def swap_name(name)
#   "#{name.split[-1]}, #{name.split[0]}"
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

############################# SEQUENCE COUNT
# def sequence(count, first)
#   1.upto(count).map {|n| first * n}
# end

# p sequence(5, 1) #== [1, 2, 3, 4, 5]
# p sequence(4, -7) #== [-7, -14, -21, -28]
# p sequence(3, 0) #== [0, 0, 0]
# p sequence(0, 1000000) #== []

############################# GRADE BOOK
# def letter_grade(grade)
#   case 
#   when grade > 100
#     "A+"
#   when 90 <= grade  && grade <= 100
#     'A'
#   when 80 <= grade && grade <= 90
#     'B'
#   when 70 <= grade && grade <= 80
#     'C'
#   when 60 <= grade && grade <= 70
#     'D'
#   else
#     'F'
#   end
# end

# def get_grade(grade1, grade2, grade3)
#   result = (grade1 + grade2 + grade3) / 3
#   letter_grade(result)
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

############################# GROCERY LIST
def buy_fruit(fruit_array)
  # new_array = []
  # fruit_array.each do |group| 
  #   group[-1].times {|i| new_array << group[0]}
  # end
  # new_array
  fruit_array.map {|fruit, quantity| [fruit] * quantity}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


























