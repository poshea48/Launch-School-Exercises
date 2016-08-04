############################# GREETING THROUGH METHODS (PART 1)
# def hello(string)
#   "Hello #{string}"
# end

# def world
#   'World'
# end

# puts hello(world)

############################## GREETING THROUGH METHODS (PART 2)
# def say_hello
#   'Hello'
# end

# def say_world
#   'World'
# end

# def greet
#   say_hello + ' ' + say_world
# end

# puts greet

############################### MAKE AND MODEL
# def car(make, model)
#   puts "#{make.capitalize} #{model.capitalize}"
# end

# car('Toyota', 'Corolla')

############################### DAY OR NIGHT?
# daylight = [true, false].sample

# def time_of_day(bool)
#   bool ? (puts "It's daytime!") : (puts "It's nighttime!")
# end

# time_of_day(daylight)

################################## NAMING ANIMALS
# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."

################################### NAME NOT FOUND
# def assign_name(name='Bob')
#   name
# end

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'

################################### MULTIPLY THE SUM
# def add(num1, num2)
#   num1 + num2
# end

# def multiply(num1, num2)
#   num1 * num2
# end


# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

#################################### RANDOM SENTENCE
# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']


# def name(name_array)
#   name_array.sample
# end

# def activity(activity_array)
#   activity_array.sample
# end

# def sentence(name, activity)
#   name + ' went ' + activity + ' today!'
# end

# puts sentence(name(names), activity(activities))

##################################### PRINT ME (PART 1)
# def print_me
#   puts "I'm printing within the method!"
# end

# print_me

###################################### PRINT ME (PART 2)
def print_me
  "I'm printing the return value!"
end

puts print_me





































