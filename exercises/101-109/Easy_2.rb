####################### How old is Teddy?
# def who (name= "Teddy")
#   age = rand(20..200)
#   puts "#{name.capitalize} is #{age} years old!"
# end
# # puts "Enter a name:"
# # name = gets.chomp
# p who

############################ How big is the room?
# SQMETERS_TO_SQFEET = 10.7639
# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# area_sm = (length * width).round(2)
# area_sf = (area_sm * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{area_sm} square meters (#{area_sf} square feet)."

############################## Tip Calculator
# puts "Enter bill amount:"
# bill = gets.chomp.to_f
# puts "Enter tip percentage:"
# tip_percent = gets.chomp.to_f

# tip = bill * (tip_percent / 100)
# puts "the tip is $#{tip.round(2)}"
# puts "the total is $#{(bill + tip).round(2)}"

############################## When will I Retire?
# p "What is your age?"
# age = gets.chomp.to_i
# p "At what age would you like to retire?"
# retire = gets.chomp.to_i
# year = Time.now.year
# years_left_to_work = retire - age

# puts "Its #{year}.  You will retire in #{year + years_left_to_work}."
# puts "You have only #{years_left_to_work} of work to go!"

################################# Greeting a user
# printf "What is your name?  "
# name = gets.chop
# name.include?('!') ? (puts "HELLO #{name.upcase}.  WHY ARE YOU SCREAMING") : (puts "Hello #{name}")

################################## Odd Numbers
# (1..99).each {|num| puts num if num.odd?}

################################## Even Numbers
#1.upto(99) {|i| i % 2 == 0 ? (puts i) : next}
# x = 1
# while x <= 99
#   puts x if x.even?
#   x += 1
# end

require 'pry'
################################### Sum or product of consecutive integers
def compute_sum(num)
  total = 0
  (1..num).each {|i| total += i}
  puts "The sum of the integers between 1 and #{num} is #{sum}."
end

def compute_product(num)
  total = 1
  (1..num).each {|i| total *= i}
  puts "The product of the integers between 1 and #{num} is #{sum}."
end

puts "Please enter an integer greater than 0:  "
number = 0
loop do
  number = gets.chomp.to_i
  (number.integer? && number > 0) ? break : (puts "That is not valid.  Try again")
end

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp

operator == 's' ? compute_sum(number) : compute_product(number)

################################## String Assignment










