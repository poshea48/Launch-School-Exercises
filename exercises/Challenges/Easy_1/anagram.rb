class Anagram
  def initialize(string)
    @string = string.downcase
  end

  def match(array)
    array.select {|word| sort_string(word.downcase) == sort_string(@string) && word.downcase != @string}
    #array.select {|word| find_all_anagrams.include?(word.downcase) && word.downcase != @string}

  end

  private

  def sort_string(string)
    string.chars.sort
  end

  # def find_all_anagrams
  #   @string.chars.permutation {|per| @results << per.join}
  #   @results
  # end
end

anagram = Anagram.new('ant')
p anagram.match(%w(tan stand at))