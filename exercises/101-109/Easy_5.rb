################################## ASCII String Value
# def ascii_value(string)
#   sum = 0
#   string.split('').each {|char| sum += char.ord}
#   # string.each_char { |char| sum += char.ord}
#   sum 
# end

# p ascii_value('Four score') #== 984
# p ascii_value('Launch School')# == 1251
# p ascii_value('a') #== 97
# p ascii_value('')# == 0

# mystery method is chr.
# 'f'.ord.chr == "f"
# 'football'.ord.chr == "f"

##################################### After Midnight (Part 1)
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY
# DAYS = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
# def time_of_day(time)
#   #delta_minutes = time % MINUTES_PER_DAY
#   day, delta_minutes = time.divmod(MINUTES_PER_DAY)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   "#{DAYS[day]} " + format('%02d:%02d', hours, minutes)

#   # hours, mm = time.divmod(60)
#   # days, hh = hours.divmod(24)
#   # "#{"%02d" % hh}:#{"%02d" % mm}"
# end

# p time_of_day(0) #== "00:00"
# p time_of_day(-3) #== "23:57"
# p time_of_day(35) #== "00:35"
# p time_of_day(-1437) #== "00:03"
# p time_of_day(3000) #== "02:00"
# p time_of_day(800) #== "13:20"
# p time_of_day(-4231) #== "01:29"

######################################## After Midnight (Part 2)
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time)
#   hour = (time[0] + time[1]).to_i
#   minute = (time[3] + time[4]).to_i
#   hour * MINUTES_PER_HOUR + minute

# end

# def before_midnight(time)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
#   # hour = (time[0] + time[1]).to_i
#   # minute = (time[3] + time[4]).to_i
#   # hour * MINUTES_PER_HOUR - minute
# end

# p after_midnight('00:00')# == 0
# p before_midnight('00:00') #== 0
# p after_midnight('12:34') #== 754
# p before_midnight('12:34') #== 686

######################################## Letter Swap
# require 'pry'    
# def swap(string)
#   arr = string.split(' ')
#   arr.map do |word| 
#     if word.size > 1
#       word.prepend(word.slice!(word[-1]))
#       word << word.slice!(word[1])
#     end
#     #binding.pry
#   end
#   arr.join(' ')
# end

# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') #== 'ebcdA'
# p swap('a') #== 'a'

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end
# This would not work since passing in word[0] and word[-1] would only
# change those characters not the whole word

###################################### Clean up the words
# LETTERS = ('a'..'z').to_a
# def cleanup(string)
#     string.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# p cleanup("---what's my +*& line?") #== ' what s my line '

####################################### LETTER COUNTER (PART 1)
# def word_sizes(string)
#   word_arr = string.split(' ')
#   word_hash = Hash.new(0)
#   word_arr.map do |word| 
#     word_hash[word.size] += 1
#   end
#   word_hash
# end

# p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

####################################### LETTER COUNTER (PART 2)
# def word_sizes(string)
#   word_arr = string.split(' ')
#   word_hash = Hash.new(0)
#   word_arr.map do |word| 
#     word_hash[word.delete('^A-Za-z').size] += 1
#   end
#   word_hash
# end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}

############################# ALPHABETICAL NUMBERS
# ENGLISH_NUMS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

# def alphabetic_number_sort(number_array)
#   #number_array.sort_by! {|word| ENGLISH_NUMS[word]}
#   number_array.sort { |a, b| ENGLISH_NUMS[a] <=> ENGLISH_NUMS[b]}

#   # hash = {}
#   # array =[]
#   # number_array.each {|i| hash[i] = ENGLISH_NUMS[i]}
#   # array = hash.values.sort
#   # array.map {|word| hash.key(word)}
# end

# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

############################# DDAAIILLYY DDOOUUBBLLEE
# require 'pry'
# def crunch(string)
#   #string.squeeze
#   new_word = ''
#   index = 0
#   while index <= string.size - 1
#     new_word << string[index] unless string[index] == string[index + 1]
#     index +=1
#   end
#   new_word
# end

# p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
# p crunch('4444abcabccba') #== '4abcabcba'
# p crunch('ggggggggggggggg') #== 'g'
# p crunch('a') #== 'a'
# p crunch('') #== ''

############################# BANNERIZER
def horizontal_line(string)
  "+#{'-' * (string.size + 2)}+"
end

def empty_line(string)
  "|#{" " * (string.size + 2)}|"
end

def string_line(string)
  "| #{string} |"
end

def print_in_box(string)
  if string.size > 78
    half = (string.size - 1) /2
    string1 = string[0..half]
    string2 = string[(half +1) ..-1]
    puts horizontal_line(string1)
    puts empty_line(string1)
    puts string_line(string1)
    puts string_line(string2)
    puts empty_line(string1)
    puts horizontal_line(string1)
  else
    puts horizontal_line(string)
    puts empty_line(string)
    puts string_line(string)
    puts empty_line(string)
    puts horizontal_line(string)
  end
end

p print_in_box('To boldly go where no one has gone before.')
p print_in_box('')
p print_in_box('to boldly go where no one has gone before.  Then go there again and again and again and again.')

############################# 

















