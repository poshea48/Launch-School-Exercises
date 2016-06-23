##1.
# title = 'The Flintstones Rock!'
# 10.times {|x| puts (" " * x) + "#{title}"}

##2.
# statement = "The Flintstones Rock"
# hash ={}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_freq = statement.scan(letter).count
#   hash[letter] = letter_freq if letter_freq > 0
# end
# p hash

##3.  It will be an error because you cannot add a string to an Int
# puts "the value of 40 + 2 is #{40 +2}"
# puts "the value of 40 + 2 is " + (40 + 2).to_s

##4.
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end
# # =>1
# # =>3

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end
# => 1
# => 2

##5.
# def factors(number)
#   dividend = number
#   divisors = []
#   # loop do
#   #   if number <= 0
#   #     puts "You need a number greater than 0"
#   #     break
#   #   else
#   #     divisors << number / dividend if number % dividend == 0 
#   #     dividend -= 1
#   #   end

#   #   break if dividend == 0
#   # end
#   while dividend > 0 do
#     divisors << number / dividend if number % dividend == 0 
#     dividend -= 1
#   end
#   divisors
# end
# p factors(0)
# p factors(15)
# p factors(321)
# p factors(-10)

##Bonus 1.  Used to check if that number is a factor.  Must divide into it evenly
##Bonus 2.  What we return after the loop. 

##6.
# You neep to put info into an array in order to concatenate it
# User input will be modified in rolling_buffer1, while in rolling_buffer2 it is not

##7.
# limit = 15...This variable is out of scope of the method fib

# def fib(first_num, second_num, limit)
#   #limit = 15
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"

##8.
# def titlesize(title)
#   # title_arr = title.split(' ')
#   # new_arr = []
#   # title_arr.each {|word| new_arr << word.capitalize}
#   # new_arr.join(' ')
#   title.split.map {|word| word.capitalize}.join(' ')
# end

# p titlesize("this is a title")

##9.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
#munsters["Herman"]["age group"] = "adult"


munsters.each do |name, description|
  case description['age']
    when 0..18
      description['age group'] = 'kid'
    when 18..64 
      description['age group'] = 'adult'
    else
      description['age group'] = 'senior'
    end
end



#   if description['age'] > 64
#     description['age group'] = 'senior'
#   elsif description['age'] > 18 && description['age'] < 65
#     description['age group'] = 'adult'
#   else
#     description['age group'] = 'kid'
#   end
# end

p munsters







