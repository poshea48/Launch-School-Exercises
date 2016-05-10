#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1,2,3,4,5,6,7,8,9,10]

arr.each {|i| puts i}

#2.
arr.each {|i| puts i if i > 5}

#3.
new_arr = arr.select {|i| puts i if i % 2 != 0}

#4.
arr.push(11)
arr.unshift(0)


#5.
arr.delete(11)
arr.push(3)
p arr

#6.
arr.uniq!
p arr

#7.
#Major difference between Array and hash is that an array is ordered by index number,and a hash by keys

#8.
h1 = {a: 1, b: 2, c: 3, d: 4}
h2 = {:e => 5, :f => 6, :g => 7}

#9.
##1.
p h1[:b]
##2.
h1[:e] = 5

##3
h1.delete_if { |k,v| v < 3.5}
p h1

#10.  Hashes can have arrays as values, and arrays can have hashes 
h_array = {:a => {b: 1, c: 2, d: 3}, :e => {f: 4, g: 5, h: 6}}
a_hash = [{i: 7, j: 8, k: 9}, {l: 10, m: 11, n: 12}]

#11.  Just been using the ruby-doc.org one for now.  Works well for now, since Im just learning Ruby

#12.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:number] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:number] = contact_data[1][2]
# puts contacts

# #13.
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:number]

# #14
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

type = [:email, :address, :phone]

# contacts.each do |name, hash|
#   type.each do |x|
#     hash[x] = contact_data.shift
#   end
# end

# puts contacts

contacts.each_with_index do |(name, hash), idx|
  type.each do |x|
    hash[x] = contact_data[idx].shift
  end
end

puts contacts

#15.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|x| x.start_with?("s")}
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|x| x.start_with?("s", "w")}
p arr

#16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |phrase| phrase.split}.flatten
p a

#17.  "These hashes are the same!"

  








