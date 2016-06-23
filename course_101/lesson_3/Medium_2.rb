##1.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# total = 0
# # munsters.each do |name, description|
# #   case description['gender']
# #   when "male"
# #     total += description['age']
# #   when 'female'
# #     total
# #   end
# # end

# munsters.each do |name, description|
#   total += description['age'] if description['gender'] == 'male'
# end

# p total

##2.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, description|
#   puts "#{name} is a #{description["age"]} year old #{description['gender']}"
# end

##3.
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

##4.
# sentence = "Humpty Dumpty sat on a wall."
# new_sentence = sentence.split(/\W/).reverse!.join(' ')
# p new_sentence

# words = sentence.split(/\W/)
# words.reverse!
# backwards_sentence = words.join(' ') + '.'
# p backwards_sentence

##5.
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# mess_with_demographics(munsters)
# p munsters

## The data did get ransacked, because the method does not reassign input object

##7.
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# rps(rps('paper,rock'), 'rock')
# rps('paper', 'rock') => 'rock'

##8.
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo) # => "no"  The foo method returns "yes".  Which we pass into 
# the bar method.  Bar method says return "no" if param != 'no'



