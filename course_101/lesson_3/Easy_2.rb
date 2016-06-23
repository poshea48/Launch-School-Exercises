# #1.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# p ages.include?('Spot')
# p ages.has_key?('Spot')
# p ages.key?('Spot')

#2. 
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# combo_age = 0
# ages.each do |key, value|
#   combo_age += value
# end
# p combo_age
# p ages.values.inject(:+)

#3.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # ages.delete_if {|k,v|  k if v >= 100}
# # p ages

# ages.keep_if {|name, age| age < 100}
# p ages

#4.
# munsters_description = "The Munsters are creepy in a good way."

# p munsters_description.capitalize
# p munsters_description.swapcase
# p munsters_description.downcase
# p munsters_description.

#5.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)
# p ages

#6.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# # age_arr = []
# # ages.each {|k,v| age_arr << v}
# # p age_arr.min

# p ages.values.min

#7.
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.include?('Dino'.downcase)

#8.
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.each_with_index {|name, index| p index if name.include?('Be')}

#9.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|name| name[0..2]}
p flintstones

#10.
flintstones.map! {|name| name[0..2]}







