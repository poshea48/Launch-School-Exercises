##1.
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

##2.
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << 'Dino'
# p flintstones

##3.
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# #flintstones.push('Dino', 'Hoppy')
# flintstones.push('Dino').push('Hoppy')
# #flintstones.concat(%w(Dino Hoppy))
# #flintstones << 'Dino' << 'Hoppy'
# p flintstones

##4.
# advice = "Few things in life are as important as house training your pet dinosaur."
# new_advice = advice.slice!(0, advice.index('house')) # String#slice method will not change the advice string
# p advice
# p new_advice

##5.
# statement = "The Flintstones Rock!"
# p statement.count 't'
# p statement.scan('t').count

##6.
title = "Flintstone Family Members"
title_spaces = title.size
remaining_spaces = 40- title_spaces
title = "#{" " * (remaining_spaces/2)}" + title + "#{" " * (remaining_spaces/2)}"
p title

#p title.center(40)
