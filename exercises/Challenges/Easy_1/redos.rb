# input
#   string of digits
#   length n 

# output
#   all possible consecutive number series of length n

# Absttraction
#   array of arrays with n consecutive digits

# algorithm
#   '01234' n = 2 => [[0,1], [1,2], [3,4]]
#   string.each_char
#   string[0..index + n], string[1..index + n]...

# class Series
#   def initialize(string)
#     @string_set = string.chars.map(&:to_i)
#   end

#   def slices(n)
#     raise ArgumentError if n > @string_set.size
#     # result = []
#     # @string_set.each_index do |index|
#     #   slice = @string_set[index..index + (n-1)].map(&:to_i)
#     #   result << slice if slice.size == n
#     # end
#     # result
#     @string_set.each_cons(n).to_a
#   end
# end

# input
#   range limit

# output
#   all primes up to range limit

# Absttraction
#   range 2..limit
#   mark the multiples of each prime, starting with 2
#   next number, prime, mark all multiples of that number

# algorithm(10)
#   [2, 3, 4, 5, 6, 7, 8, 9, 10]
#     2 => multiples of 2 get deleted( 4, 6, 8, 10) => [2, 3, 5, 7, 9]
#     3 => multiples of 3 get deleted(6, 9) => [2, 3, 5, 7]

# class Sieve
#   def initialize(limit)
#     @num_range = (2..limit).to_a
#   end

#   def primes
#     @num_range.each_with_index do |num, index|
#       @num_range[index + 1..-1].each do |multiple|
#         @num_range.delete(multiple) if multiple % num == 0
#       end
#     end
#     @num_range
#   end
# end

# input
#   octal base-8 input string

# output
#   decimal base-10

# Absttraction
#   convert each digit in octal string to decimal
#   sum up all digits

# algorithm 
#   233 => [2, 3, 3] exp = [2, 1, 0]
#   = 2 * 10**2 + 3 * 10**1 + 3 * 10**0
#   n = num of digits
#   first digit * 10 ** n-1 + second_digit * 10 ** n-2

# class Octal
#   def initialize(oct_num)
#     @oct_num = oct_num.split('').map(&:to_i)
#     @exp = (0...@oct_num.size).to_a
#   end

#   def to_decimal
#     result = 0
#     @oct_num.each_with_index do |num,index|
#       result += num * (8 ** @exp[index])
#     end
#     result
#   end
# end

# input
#   trinary number ('102102')

# output
#   decimal equivalent

# rules
#   trinary nums => 0, 1, 2
#     Invalid entries == 0
#   last place  == digit * 3 ** 0
#   2nd to last == digit * 3 ** 1
#   3rd to last == digit * 3 ** 2

# algorithm
#   result += tri.reverse.each_with_index {|digit, index| digit * (3**index)}

# class Trinary
#   def initialize(tri_num)
#     @tri_num = tri_num.split('').map(&:to_i)
#   end

#   def to_decimal
#     return 0 if !valid_tri?
#     @tri_num.reverse.each_with_index {|num, index| num * (3**index)}.inject(:+)
#   end

#   private

#   def valid_tri?
#     @tri_num.all? {|num| num = /[012]/}
#   end
# end

# input
#   set of numbers or 3, 5
#   (first...n)

# output
#   sum of multiples 

# Absttraction
#   iterate from numbers given to n, push multiples of numbers given into result array
#   sum result array

# input
#   octal input string

# output
#   decimal output string

# Absttraction
#   iterate through each digit and multiply it by 8 ** (revere index)

# algorithm
#   digits.split('').map(&:to_i).reverse.each

# input
#   trinary number, only contains (0,1,2)

# output
#   convert to its decimal equivalent

# Absttraction
#   Iterate through each digit and multiply it by 3 ** (reverse index)
#   sum up 

# algorithm
#   string.split('').map(&:to_i).reverse.each_with_index{}.inject(:+)

# input
#   if no set given [3,5] end number n
#   set of *numbers end number n

# output
#   sum of the multiples of either 3 or 5 / or set given

# Absttraction
#   if no set is given, class method sums up the multiples of either 3 or 5
#   if set given, instance method sums up multiples of *set

# algorithm
#   self.to(n)
#     [3,5].each{|num| (num...n).select {|multiple| multiple % num == 0} }

#   def to(n)

# input
#   word and list of possible anagrams

# output
#   array of words that match list given and anagrams of word

# Absttraction  
#   method that creates an array of anagrams from word
#   then iterate through list given to see if any match, return an array of matches

# algorithm
#   word.chars.permutation.to_a.flatten
#   list.select {|word| permutations.include?(word)}

# input
#   initial DNA strand, comparison DNA strand

# output
#   number of differences between base pairs

# Abstraction
#   iterate through DNA strand and compare with other DNA strand of same length
#   count number of differences between each base pairs of same index

# algorithm
#   smallest strand length will be test length for each

# input
#   phrase

# output
#   count of each word in phrase

# Abstraction
#   iterate through words in phrase and count the occurances of each word

# algorithm
#   result = Hash.new(0)
#   phrase.split.each {result[word] += 1}

# input
#   integer

# output
#   roman numeral

# Abstraction
#   num > 1000
#     num - 1000 => result.append('M')


# rules
#   ROMAN_NUMERALS = {
#     'M' => 1000,
#     'D' => 500,
#     'C' => 100,
#     'L' => 50,
#     'X' => 10,
#     'V' => 5,
#     'I' => 1
#   }

# algorithm
#   ROMAN_NUMERALS.each do |key, value|
#     loop do
#       break if number < value
#       result.append(key)
#       number -= value
#     end
#   end

# input
#   word

# output
#   scrabble score

# Abstraction
#   assign a score to each character in a word
#   sum up score of each character

# algorithm 
#   word.each_char {|char| sum += character_score(char)}

class Scrabble
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def self.score(word)
    self.new(word).score
  end

  def score
    return 0 if @word.nil?
    sum = 0
    word.chars.each do |letter| 
      sum += character_score(letter.upcase)
    end
    sum
  end

  private

  def character_score(letter)
      case letter
        when /[AEIOULNRST]/
          then 1
        when /[DG]/
          then 2
        when /[BCMP]/
          then 3
        when /[FHVWY]/
          then 4
        when /[K]/
          then 5
        when /[JX]/
          then 8
        when /[QZ]/
          then 10
        else
          0
      end
    end
end































