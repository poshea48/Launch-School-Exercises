########################## UNPREDICTABLE WEATHER (PART 1)
# sun = ['visible', 'hidden'].sample

# puts "The sun is so bright!" if sun == 'visible'

########################## UNPREDICTABLE WEATHER (PART 2)
# sun = ['visible', 'hidden'].sample

# puts "The clouds are blocking the sun!" unless sun == 'visible'

########################## UNPREDICTABLE WEATHER (PART 3)
# sun = ['visible', 'hidden'].sample

# puts 'The sun is so bright!' if sun == 'visible'
# puts "The clouds are blocking the sun!" unless sun == 'visible'

########################### TRUE OR FALSE
# boolean = [true, false].sample

# boolean ? puts("I'm true!") : puts("I'm false!")

########################### TRUTHY NUMBER
# "My favorite number is 7." Every expression evaluates to true, except false and nil

########################### SPOTLIGHT (PART 1)
# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
#   when 'green' then puts "Go!"
#   when 'yellow' then puts "Slow down!"
#   when 'red' then puts "Stop!"
# end

########################### SPOTLIGHT (PART 2)
# stoplight = ['green', 'yellow', 'red'].sample

# if stoplight == 'green'
#   puts 'Go!'
# elsif stoplight == 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

############################ SLEEP ALERT
# status = ['awake', 'tired'].sample

# alert = if status == 'awake'
#           'Be productive!'
#         else
#           'Go to sleep!'
#         end

# puts alert

############################# COOL NUMBERS
# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

########################### SPOTLIGHT (PART 3)
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end











