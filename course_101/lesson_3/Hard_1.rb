##1.
# if false
#   greeting = “hello world”
# end

# greeting
## Since greeting has not been assigned anything it will return nil
## But since it was initialized it does not throw an error

##2.
# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings # => "hi there"

##3.
# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> "one is one" 
# puts "two is: #{two}" #=> "two is two"
# puts "three is: #{three}" #=> "three is three"

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> "one is one"
# puts "two is: #{two}" #=> "two is two"
# puts "three is: #{three}" #=> "three is three"

# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")     
#   two.gsub!("two","three")          #gsub! is changing the object
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" #=> "one is two"
# puts "two is: #{two}" #=> "two is three"
# puts "three is: #{three}" #=> "three is one"

##4.
# require 'securerandom'

# def identifier
#   SecureRandom.uuid
# end
# p identifier
# def create_uuid

#   # 5 sections of hexadecimal characters
#   # sec1 = 8 random characters
#   # sec2-sec4 = 4 random characters
#   # sec5 = 12 random characters 
#   # uuid = sec1 + - + sec2 + - + sec3 + - + sec4 + - + sec5
#   set = [(0..9).to_a.to_s, ('a'..'z').to_a].flatten
#   # sec1 = 8.times.map {set.sample}.join
#   # sec2_to_4 = 4.times.map {set.sample}.join + '-' + 4.times.map {set.sample}.join + '-' + 4.times.map {set.sample}.join
#   # sec5 = 12.times.map {set.sample}.join
#   # uuid = sec1 + '-' + sec2_to_4 + '-'+ sec5
#   uuid = ''
#   sections = [8,4,4,4,12]

#   sections.each_with_index do |section, index|
#     section.times.map { uuid += set.sample}
#     uuid += '-' unless index >= sections.size - 1
#   end

#   uuid 
# end

# p create_uuid

##5.
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  
  if dot_separated_words.size == 4
    dot_separated_words.each do |word|
      is_a_number?(word) ? true:false
    end
  else
    false
  end
end

p dot_separated_ip_address?('10.4.5.11')
p dot_separated_ip_address?('4.45.3')

#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     break if !is_a_number?(word)
#   end
#   return true
# end




