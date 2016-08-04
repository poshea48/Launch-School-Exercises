NUMBERS = %w(zero one two three four five six seven eight nine ten)
OPERATORS = %w(plus minus times divided)

def mathphrase(num)
  block = [NUMBERS.sample]
  num.times do |number|
    block << OPERATORS.sample
    block << NUMBERS.sample
  end

  block.join(' ').gsub('divided', 'divided by')

  #OPEERATORS x num
  #NUMBERS x num + 1
end

# p mathphrase(1)
# p mathphrase(3)
# p mathphrase(4)

rando = Random.new
10.times {p mathphrase(rando.rand(20))}