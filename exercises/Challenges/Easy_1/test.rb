# require 'minitest/autorun'
# require_relative 'sum_of_multiple'

# class SumTest < Minitest::Test
#   def test_sum_to_1
#     assert_equal 0, SumOfMultiples.to(1)
#   end

#   def test_sum_to_3
#     #skip
#     assert_equal 3, SumOfMultiples.to(4)
#   end

#   def test_sum_to_10
#     #skip
#     assert_equal 23, SumOfMultiples.to(10)
#   end

#   def test_sum_to_100
#     assert_equal 2_318, SumOfMultiples.to(100)
#   end

#   def test_sum_to_1000
#     #skip
#     assert_equal 233_168, SumOfMultiples.to(1000)
#   end

#   def test_configurable_7_13_17_to_20
#     #skip
#     assert_equal 51, SumOfMultiples.new(7, 13, 17).to(20)
#   end

#   def test_configurable_4_6_to_15
#     #skip
#     assert_equal 30, SumOfMultiples.new(4, 6).to(15)
#   end

#   def test_configurable_5_6_8_to_150
#     #skip
#     assert_equal 4419, SumOfMultiples.new(5, 6, 8).to(150)
#   end

#   def test_configurable_43_47_to_10000
#    # skip
#     assert_equal 2_203_160, SumOfMultiples.new(43, 47).to(10_000)
#   end
# end

# require 'minitest/autorun'
# require_relative 'anagram'

# class AnagramTest < Minitest::Test
#   def test_no_matches
#     detector = Anagram.new('diaper')
#     assert_equal [], detector.match(%w(hello world zombies pants))
#   end

#   def test_detect_simple_anagram
#     #skip
#     detector = Anagram.new('ant')
#     anagrams = detector.match(%w(tan stand at))
#     assert_equal ['tan'], anagrams
#   end

#   def test_detect_multiple_anagrams
#     #skip
#     detector = Anagram.new('master')
#     anagrams = detector.match(%w(stream pigeon maters))
#     assert_equal %w(maters stream), anagrams.sort
#   end

#   def test_does_not_confuse_different_duplicates
#     #skip
#     detector = Anagram.new('galea')
#     assert_equal [], detector.match(['eagle'])
#   end

#   def test_identical_word_is_not_anagram
#     #skip
#     detector = Anagram.new('corn')
#     anagrams = detector.match %w(corn dark Corn rank CORN cron park)
#     assert_equal ['cron'], anagrams
#   end

#   def test_eliminate_anagrams_with_same_checksum
#     #skip
#     detector = Anagram.new('mass')
#     assert_equal [], detector.match(['last'])
#   end

#   def test_eliminate_anagram_subsets
#     #skip
#     detector = Anagram.new('good')
#     assert_equal [], detector.match(%w(dog goody))
#   end

#   def test_detect_anagram
#     #skip
#     detector = Anagram.new('listen')
#     anagrams = detector.match %w(enlists google inlets banana)
#     assert_equal ['inlets'], anagrams
#   end

#   def test_multiple_anagrams
#     #skip
#     detector = Anagram.new('allergy')
#     anagrams =
#       detector.match %w( gallery ballerina regally clergy largely leading)
#     assert_equal %w(gallery largely regally), anagrams.sort
#   end

#   def test_anagrams_are_case_insensitive
#     #skip
#     detector = Anagram.new('Orchestra')
#     anagrams = detector.match %w(cashregister Carthorse radishes)
#     assert_equal ['Carthorse'], anagrams
#   end
# end

# require 'minitest/autorun'
# require_relative 'point_mutations'

# class DNATest < Minitest::Test
#   def test_no_difference_between_empty_strands
#     assert_equal 0, DNA.new('').hamming_distance('')
#   end

#   def test_no_difference_between_identical_strands
#     #skip
#     assert_equal 0, DNA.new('GGACTGA').hamming_distance('GGACTGA')
#   end

#   def test_complete_hamming_distance_in_small_strand
#     #skip
#     assert_equal 3, DNA.new('ACT').hamming_distance('GGA')
#   end

#   def test_hamming_distance_in_off_by_one_strand
#     #skip
#     strand = 'GGACGGATTCTGACCTGGACTAATTTTGGGG'
#     distance = 'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
#     assert_equal 19, DNA.new(strand).hamming_distance(distance)
#   end

#   def test_small_hamming_distance_in_middle_somewhere
#     #skip
#     assert_equal 1, DNA.new('GGACG').hamming_distance('GGTCG')
#   end

#   def test_larger_distance
#     #skip
#     assert_equal 2, DNA.new('ACCAGGG').hamming_distance('ACTATGG')
#   end

#   def test_ignores_extra_length_on_other_strand_when_longer
#     #skip
#     assert_equal 3, DNA.new('AAACTAGGGG').hamming_distance('AGGCTAGCGGTAGGAC')
#   end

#   def test_ignores_extra_length_on_original_strand_when_longer
#     #skip
#     strand = 'GACTACGGACAGGGTAGGGAAT'
#     distance = 'GACATCGCACACC'
#     assert_equal 5, DNA.new(strand).hamming_distance(distance)
#   end

#   def test_does_not_actually_shorten_original_strand
#     #skip
#     dna = DNA.new('AGACAACAGCCAGCCGCCGGATT')
#     assert_equal 1, dna.hamming_distance('AGGCAA')
#     assert_equal 4, dna.hamming_distance('AGACATCTTTCAGCCGCCGGATTAGGCAA')
#     assert_equal 1, dna.hamming_distance('AGG')
#   end
# end


# require 'minitest/autorun'
# require_relative 'word_count'

# # Test data version:

# class PhraseTest < Minitest::Test
#   def test_count_one_word
#     phrase = Phrase.new('word')
#     counts = { 'word' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_count_one_of_each
#     #skip
#     phrase = Phrase.new('one of each')
#     counts = { 'one' => 1, 'of' => 1, 'each' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_count_multiple_occurrences
#     #skip
#     phrase = Phrase.new('one fish two fish red fish blue fish')
#     counts = { 'one' => 1, 'fish' => 4, 'two' => 1, 'red' => 1, 'blue' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_count_everything_just_once
#     #skip
#     phrase = Phrase.new('all the kings horses and all the kings men')
#     phrase.word_count # count it an extra time
#     counts = {
#       'all' => 2, 'the' => 2, 'kings' => 2,
#       'horses' => 1, 'and' => 1, 'men' => 1
#     }
#     assert_equal counts, phrase.word_count
#   end

#   def test_ignore_punctuation
#     #skip
#     phrase = Phrase.new('car : carpet as java : javascript!!&@$%^&')
#     counts = {
#       'car' => 1, 'carpet' => 1, 'as' => 1,
#       'java' => 1, 'javascript' => 1
#     }
#     assert_equal counts, phrase.word_count
#   end

#   def test_handles_cramped_lists
#     #skip
#     phrase = Phrase.new('one,two,three')
#     counts = { 'one' => 1, 'two' => 1, 'three' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_handles_expanded_lists
#     #skip
#     phrase = Phrase.new("one,\ntwo,\nthree")
#     counts = { 'one' => 1, 'two' => 1, 'three' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_include_numbers
#     #skip
#     phrase = Phrase.new('testing, 1, 2 testing')
#     counts = { 'testing' => 2, '1' => 1, '2' => 1 }
#     assert_equal counts, phrase.word_count
#   end

#   def test_normalize_case
#     #skip
#     phrase = Phrase.new('go Go GO')
#     counts = { 'go' => 3 }
#     assert_equal counts, phrase.word_count
#   end


#   def test_with_apostrophes
#     #skip
#     phrase = Phrase.new("First: don't laugh. Then: don't cry.")
#     counts = {
#       'first' => 1, "don't" => 2, 'laugh' => 1,
#       'then' => 1, 'cry' => 1
#     }
#     assert_equal counts, phrase.word_count
#   end

#   def test_with_quotations
#     #skip
#     phrase = Phrase.new("Joe can't tell between 'large' and large.")
#     counts = {
#       'joe' => 1, "can't" => 1, 'tell' => 1,
#       'between' => 1, 'large' => 2, 'and' => 1
#     }
#     assert_equal counts, phrase.word_count
#   end
# end

# require 'minitest/autorun'
# require_relative 'perfect_numbers'

# class PerfectNumberTest < Minitest::Test
#   def test_initialize_perfect_number
#     #skip
#     assert_raises RuntimeError do
#       PerfectNumber.classify(-1)
#     end
#   end

#   def test_classify_deficient
#     assert_equal 'deficient', PerfectNumber.classify(13)
#   end

#   def test_classify_perfect
#     assert_equal 'perfect', PerfectNumber.classify(28)
#   end

#   def test_classify_abundant
#     assert_equal 'abundant', PerfectNumber.classify(12)
#   end
# end

require 'minitest/autorun'
require_relative 'roman_numerals'

class RomanNumeralsTest < Minitest::Test
  def test_1
    assert_equal 'I', 1.to_roman
  end

  def test_2
    #skip
    assert_equal 'II', 2.to_roman
  end

  def test_3
   # skip
    assert_equal 'III', 3.to_roman
  end

  def test_4
    #skip
    assert_equal 'IV', 4.to_roman
  end

  def test_5
    #skip
    assert_equal 'V', 5.to_roman
  end

  def test_6
    #skip
    assert_equal 'VI', 6.to_roman
  end

  def test_9
    #skip
    assert_equal 'IX', 9.to_roman
  end

  def test_27
    #skip
    assert_equal 'XXVII', 27.to_roman
  end

  def test_48
    #skip
    assert_equal 'XLVIII', 48.to_roman
  end

  def test_59
    #skip
    assert_equal 'LIX', 59.to_roman
  end

  def test_93
    #skip
    assert_equal 'XCIII', 93.to_roman
  end

  def test_141
    #skip
    assert_equal 'CXLI', 141.to_roman
  end

  def test_163
    #skip
    assert_equal 'CLXIII', 163.to_roman
  end

  def test_402
    #skip
    assert_equal 'CDII', 402.to_roman
  end

  def test_575
    #skip
    assert_equal 'DLXXV', 575.to_roman
  end

  def test_911
    #skip
    assert_equal 'CMXI', 911.to_roman
  end

  def test_1024
    #skip
    assert_equal 'MXXIV', 1024.to_roman
  end

  def test_3000
    #skip
    assert_equal 'MMM', 3000.to_roman
  end
end
































