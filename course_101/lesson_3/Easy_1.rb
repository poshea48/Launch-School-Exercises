# 1.   1
###    2
###    2 
###    3

# 2.  The ! mutates the caller, and ? asks if an object is present, returns a boolean
### 1.  does not equal, used when comparing 2 variables that are not the same
### 2.  The ! before changes its boolean, true to false, or false to true
### 3.  the ! after the method mutates the object
### 4.  The ?: is the ternary operator
### 5.  The ? after signifies a boolean return
### 6.  Two !! cancel each other out; false to true to false, and true to false to true

# 3. 
# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.gsub!('important', 'urgent')

# 4. 
# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1) # => 2 (Deletes number at index 1)
# numbers = [1, 2, 3, 4, 5]
# p numbers.delete(1) # => 1 (Deletes the number 1)

#5. 
# p (10..100).include?(42)

#6. 
# famous_words = 'seven years ago...'
# #p famous_words.prepend("Four score and ")
# p "Four score and #{famous_words}"

#7.
# def add_eight(number)
#   number + 8
# end

# number = 2

# how_deep = "number"
# 5.times { how_deep.gsub!("number", "add_eight(number)") }

# p how_deep
# p eval(how_deep) # => 42

#8.
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# p flintstones.flatten!

#9.
#flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# arr = []
# flintstones.each do |name, num|
#   if name == "Barney"
#     arr << name << num
#   end
#   arr
# end
# p arr

#p flintstones.assoc("Barney")

#10.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintstones.each do |name|
  hash[name] = flintstones.index(name)
end

p hash










