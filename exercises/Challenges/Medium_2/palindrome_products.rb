# input
#   max and min factors

# output
#   factors that produce largest palindrome in given range

# Abstraction 
#   range 10..99
#     => 9009 => [91, 99]

# algorithm
#   palindromes = {|palindromes, palindrome| palindromes[palindrome] = []}
#   (1..9).each do |factor1|
#     (1..9).each do |factor2|
#       product = factor1 * factor2
#       palindromes[product] = [factor1, factor2] if palindrome?(product)
#     end
#   end

class Palindrome
  attr_reader :number, :min_num
  def initialize(number, min_num=1)
    @number = number
    @min_num = min_num
  end

  def factors
    factors = []
    (min_num..number).to_a.repeated_combination(2) do |factor1, factor2|
      product = factor1 * factor2
      factors << [factor1, factor2] if product == number
    end
    factors
  end

  def palindrome?
    @number.to_s == @number.to_s.reverse
  end

  def value
    number
  end
end

class Palindromes
  def initialize(hash_args)
    @max_num = hash_args[:max_factor]
    @min_num = hash_args[:min_factor] || 1
    @palindromes = Hash.new {|palindromes, palindrome| palindromes[palindrome] = []}
  end

  def generate
    (@min_num..@max_num).to_a.repeated_combination(2) do |factor1, factor2|
      product = factor1 * factor2
      @palindromes[product] << [factor1, factor2] if palindrome?(product)
    end
  end

  def palindrome?(number)
    number.to_s == number.to_s.reverse
  end

  def largest
    Struct.new(:value, :factors).new(largest_product, @palindromes[largest_product])
  end

  def smallest
    Struct.new(:value, :factors).new(smallest_product, @palindromes[smallest_product])
  end
  
  def largest_product
    @palindromes.keys.max
  end

  def smallest_product
    @palindromes.keys.min
  end
end

palindromes = Palindromes.new(max_factor: 9)
palindromes.generate
largest = palindromes.largest
p largest.factors






























