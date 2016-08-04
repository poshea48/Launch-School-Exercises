############################# FIRST CAR
# car = {
#   type:    'sedan'
#   color:   'blue'
#   mileage: 80_000
# }

############################# ADDING THE YEAR
# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000
# }

# car[:year] = 2003

# p car

############################# BROKEN ODDOMETER
# car = {
#   type:    'sedan',
#   color:   'blue',
#   mileage: 80_000,
#   year:    2003
# }

# car.delete(:mileage)
# p car

############################# WHAT COLOR?
# car = {
#   type:    'sedan',
#   color:   'blue',
#   year:    2003
# }
# puts car[:color]

############################# LABELED NUMBERS
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each {|k,v| puts "A #{k} number is #{v}."}

############################# DIVIDED BY TWO
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# half_numbers = numbers.map {|k,v| v / 2}

# p half_numbers

############################# LOW, MEDIUM, OR HIGH?
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select {|k,v| v < 25}

# p low_numbers

############################# LOW OR NOTHING
# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# low_numbers = numbers.select! do |key, value|
#                  value < 25
#                end

# p low_numbers
# p numbers

############################# MULTIPLE CARS
# vehicles = {
#   car:   {type: 'sedan', color: 'blue', year: 2003},
#   truck: {type: 'pickup', color: 'red', year: 1998}

#   # :Car =>   {:type => 'sedan', :color => 'blue', :year => 2003}
#   # :Truck => {:type => 'pickup', :color => 'red', :year => 1998}
# }

# p vehicles

############################# WHICH COLLECTION?
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
p car











