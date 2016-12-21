# require 'minitest/autorun'
# require_relative 'kindergarten_garden'

# class GardenTest < Minitest::Test
#   def test_alices_garden
#     garden = Garden.new("RC\nGG")
#     assert_equal [:radishes, :clover, :grass, :grass], garden.alice
#   end

#   def test_different_garden_for_alice
#     #skip
#     garden = Garden.new("VC\nRC")
#     assert_equal [:violets, :clover, :radishes, :clover], garden.alice
#   end

#   def test_bobs_garden
#     #skip
#     garden = Garden.new("VVCG\nVVRC")
#     assert_equal [:clover, :grass, :radishes, :clover], garden.bob
#   end

#   def test_bob_and_charlies_gardens
#     #skip
#     garden = Garden.new("VVCCGG\nVVCCGG")
#     assert_equal [:clover, :clover, :clover, :clover], garden.bob
#     assert_equal [:grass, :grass, :grass, :grass], garden.charlie
#   end
# end


# class TestFullGarden < Minitest::Test
#   def setup
#     #skip
#     diagram = "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV"
#     @garden = Garden.new(diagram)
#   end

#   attr_reader :garden

#   def test_alice
#     #skip
#     assert_equal [:violets, :radishes, :violets, :radishes], garden.alice
#   end

#   def test_bob
#     #skip
#     assert_equal [:clover, :grass, :clover, :clover], garden.bob
#   end

#   def test_charlie
#     #skip
#     assert_equal [:violets, :violets, :clover, :grass], garden.charlie
#   end

#   def test_david
#     #skip
#     assert_equal [:radishes, :violets, :clover, :radishes], garden.david
#   end

#   def test_eve
#     #skip
#     assert_equal [:clover, :grass, :radishes, :grass], garden.eve
#   end

#   def test_fred
#     #skip
#     assert_equal [:grass, :clover, :violets, :clover], garden.fred
#   end

#   def test_ginny
#     #skip
#     assert_equal [:clover, :grass, :grass, :clover], garden.ginny
#   end

#   def test_harriet
#     #skip
#     assert_equal [:violets, :radishes, :radishes, :violets], garden.harriet
#   end

#   def test_ileana
#     #skip
#     assert_equal [:grass, :clover, :violets, :clover], garden.ileana
#   end

#   def test_joseph
#     #skip
#     assert_equal [:violets, :clover, :violets, :grass], garden.joseph
#   end

#   def test_kincaid
#     #skip
#     assert_equal [:grass, :clover, :clover, :grass], garden.kincaid
#   end

#   def test_larry
#     #skip
#     assert_equal [:grass, :violets, :clover, :violets], garden.larry
#   end
# end

# class DisorderedTest < Minitest::Test
#   def setup
#     #skip
#     diagram = "VCRRGVRG\nRVGCCGCV"
#     students = %w(Samantha Patricia Xander Roger)
#     @garden = Garden.new(diagram, students)
#   end

#   attr_reader :garden

#   def test_patricia
#     #skip
#     assert_equal [:violets, :clover, :radishes, :violets], garden.patricia
#   end

#   def test_roger
#     #skip
#     assert_equal [:radishes, :radishes, :grass, :clover], garden.roger
#   end

#   def test_samantha
#     #skip
#     assert_equal [:grass, :violets, :clover, :grass], garden.samantha
#   end

#   def test_xander
#     #skip
#     assert_equal [:radishes, :grass, :clover, :violets], garden.xander
#   end
# end

# class TwoGardensDifferentStudents < Minitest::Test
#   def diagram
#     "VCRRGVRG\nRVGCCGCV"
#   end

#   def garden_1
#     @garden_1 ||= Garden.new(diagram, %w(Alice Bob Charlie Dan))
#   end

#   def garden_2
#     @garden_2 ||= Garden.new(diagram, %w(Bob Charlie Dan Erin))
#   end

#   def test_bob_and_charlie_per_garden
#     #skip
#     assert_equal [:radishes, :radishes, :grass, :clover], garden_1.bob
#     assert_equal [:violets, :clover, :radishes, :violets], garden_2.bob
#     assert_equal [:grass, :violets, :clover, :grass], garden_1.charlie
#     assert_equal [:radishes, :radishes, :grass, :clover], garden_2.charlie
#   end
# end

# require 'minitest/autorun'
# require_relative 'scrabble_score'

# class ScrabbleTest < Minitest::Test
#   def test_empty_word_scores_zero
#     assert_equal 0, Scrabble.new('').score
#   end

#   def test_whitespace_scores_zero
#     #skip
#     assert_equal 0, Scrabble.new(" \t\n").score
#   end

#   def test_nil_scores_zero
#     #skip
#     assert_equal 0, Scrabble.new(nil).score
#   end

#   def test_scores_very_short_word
#     #skip
#     assert_equal 1, Scrabble.new('a').score
#   end

#   def test_scores_other_very_short_word
#     #skip
#     assert_equal 4, Scrabble.new('f').score
#   end

#   def test_simple_word_scores_the_number_of_letters
#     #skip
#     assert_equal 6, Scrabble.new('street').score
#   end

#   def test_complicated_word_scores_more
#     #skip
#     assert_equal 22, Scrabble.new('quirky').score
#   end

#   def test_scores_are_case_insensitive
#     #skip
#     assert_equal 41, Scrabble.new('OXYPHENBUTAZONE').score
#   end

#   def test_convenient_scoring
#     #skip
#     assert_equal 13, Scrabble.score('alacrity')
#   end
# end

require 'minitest/autorun'
require_relative 'beer_song'

#rubocop:disable Metrics/LineLength
class BeerSongTest < Minitest::Test
  def test_the_first_verse
    #skip
    expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" \
      "Take one down and pass it around, 98 bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verse(99)
  end

  def test_another_verse
    #skip
    expected = "3 bottles of beer on the wall, 3 bottles of beer.\n" \
      "Take one down and pass it around, 2 bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verse(3)
  end

  def test_verse_2
    #skip
    expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verse(2)
  end

  def test_verse_1
   #skip
    expected = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verse(1)
  end

  def test_verse_0
    #skip
    expected = "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verse(0)
  end

  def test_a_couple_verses
    #skip
    expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" \
      "Take one down and pass it around, 98 bottles of beer on the wall.\n" \
      "\n" \
      "98 bottles of beer on the wall, 98 bottles of beer.\n" \
      "Take one down and pass it around, 97 bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verses(99, 98)
  end

  def test_a_few_verses
    #skip
    expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n" \
      "\n" \
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n" \
      "\n" \
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    assert_equal expected, BeerSong.new.verses(2, 0)
  end

    
#rubocop:disable Metrics/MethodLength
  def test_the_whole_song  
    #skip
    expected = <<-SONG
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.

97 bottles of beer on the wall, 97 bottles of beer.
Take one down and pass it around, 96 bottles of beer on the wall.

96 bottles of beer on the wall, 96 bottles of beer.
Take one down and pass it around, 95 bottles of beer on the wall.

95 bottles of beer on the wall, 95 bottles of beer.
Take one down and pass it around, 94 bottles of beer on the wall.

94 bottles of beer on the wall, 94 bottles of beer.
Take one down and pass it around, 93 bottles of beer on the wall.

93 bottles of beer on the wall, 93 bottles of beer.
Take one down and pass it around, 92 bottles of beer on the wall.

92 bottles of beer on the wall, 92 bottles of beer.
Take one down and pass it around, 91 bottles of beer on the wall.

91 bottles of beer on the wall, 91 bottles of beer.
Take one down and pass it around, 90 bottles of beer on the wall.

90 bottles of beer on the wall, 90 bottles of beer.
Take one down and pass it around, 89 bottles of beer on the wall.

89 bottles of beer on the wall, 89 bottles of beer.
Take one down and pass it around, 88 bottles of beer on the wall.

88 bottles of beer on the wall, 88 bottles of beer.
Take one down and pass it around, 87 bottles of beer on the wall.

87 bottles of beer on the wall, 87 bottles of beer.
Take one down and pass it around, 86 bottles of beer on the wall.

86 bottles of beer on the wall, 86 bottles of beer.
Take one down and pass it around, 85 bottles of beer on the wall.

85 bottles of beer on the wall, 85 bottles of beer.
Take one down and pass it around, 84 bottles of beer on the wall.

84 bottles of beer on the wall, 84 bottles of beer.
Take one down and pass it around, 83 bottles of beer on the wall.

83 bottles of beer on the wall, 83 bottles of beer.
Take one down and pass it around, 82 bottles of beer on the wall.

82 bottles of beer on the wall, 82 bottles of beer.
Take one down and pass it around, 81 bottles of beer on the wall.

81 bottles of beer on the wall, 81 bottles of beer.
Take one down and pass it around, 80 bottles of beer on the wall.

80 bottles of beer on the wall, 80 bottles of beer.
Take one down and pass it around, 79 bottles of beer on the wall.

79 bottles of beer on the wall, 79 bottles of beer.
Take one down and pass it around, 78 bottles of beer on the wall.

78 bottles of beer on the wall, 78 bottles of beer.
Take one down and pass it around, 77 bottles of beer on the wall.

77 bottles of beer on the wall, 77 bottles of beer.
Take one down and pass it around, 76 bottles of beer on the wall.

76 bottles of beer on the wall, 76 bottles of beer.
Take one down and pass it around, 75 bottles of beer on the wall.

75 bottles of beer on the wall, 75 bottles of beer.
Take one down and pass it around, 74 bottles of beer on the wall.

74 bottles of beer on the wall, 74 bottles of beer.
Take one down and pass it around, 73 bottles of beer on the wall.

73 bottles of beer on the wall, 73 bottles of beer.
Take one down and pass it around, 72 bottles of beer on the wall.

72 bottles of beer on the wall, 72 bottles of beer.
Take one down and pass it around, 71 bottles of beer on the wall.

71 bottles of beer on the wall, 71 bottles of beer.
Take one down and pass it around, 70 bottles of beer on the wall.

70 bottles of beer on the wall, 70 bottles of beer.
Take one down and pass it around, 69 bottles of beer on the wall.

69 bottles of beer on the wall, 69 bottles of beer.
Take one down and pass it around, 68 bottles of beer on the wall.

68 bottles of beer on the wall, 68 bottles of beer.
Take one down and pass it around, 67 bottles of beer on the wall.

67 bottles of beer on the wall, 67 bottles of beer.
Take one down and pass it around, 66 bottles of beer on the wall.

66 bottles of beer on the wall, 66 bottles of beer.
Take one down and pass it around, 65 bottles of beer on the wall.

65 bottles of beer on the wall, 65 bottles of beer.
Take one down and pass it around, 64 bottles of beer on the wall.

64 bottles of beer on the wall, 64 bottles of beer.
Take one down and pass it around, 63 bottles of beer on the wall.

63 bottles of beer on the wall, 63 bottles of beer.
Take one down and pass it around, 62 bottles of beer on the wall.

62 bottles of beer on the wall, 62 bottles of beer.
Take one down and pass it around, 61 bottles of beer on the wall.

61 bottles of beer on the wall, 61 bottles of beer.
Take one down and pass it around, 60 bottles of beer on the wall.

60 bottles of beer on the wall, 60 bottles of beer.
Take one down and pass it around, 59 bottles of beer on the wall.

59 bottles of beer on the wall, 59 bottles of beer.
Take one down and pass it around, 58 bottles of beer on the wall.

58 bottles of beer on the wall, 58 bottles of beer.
Take one down and pass it around, 57 bottles of beer on the wall.

57 bottles of beer on the wall, 57 bottles of beer.
Take one down and pass it around, 56 bottles of beer on the wall.

56 bottles of beer on the wall, 56 bottles of beer.
Take one down and pass it around, 55 bottles of beer on the wall.

55 bottles of beer on the wall, 55 bottles of beer.
Take one down and pass it around, 54 bottles of beer on the wall.

54 bottles of beer on the wall, 54 bottles of beer.
Take one down and pass it around, 53 bottles of beer on the wall.

53 bottles of beer on the wall, 53 bottles of beer.
Take one down and pass it around, 52 bottles of beer on the wall.

52 bottles of beer on the wall, 52 bottles of beer.
Take one down and pass it around, 51 bottles of beer on the wall.

51 bottles of beer on the wall, 51 bottles of beer.
Take one down and pass it around, 50 bottles of beer on the wall.

50 bottles of beer on the wall, 50 bottles of beer.
Take one down and pass it around, 49 bottles of beer on the wall.

49 bottles of beer on the wall, 49 bottles of beer.
Take one down and pass it around, 48 bottles of beer on the wall.

48 bottles of beer on the wall, 48 bottles of beer.
Take one down and pass it around, 47 bottles of beer on the wall.

47 bottles of beer on the wall, 47 bottles of beer.
Take one down and pass it around, 46 bottles of beer on the wall.

46 bottles of beer on the wall, 46 bottles of beer.
Take one down and pass it around, 45 bottles of beer on the wall.

45 bottles of beer on the wall, 45 bottles of beer.
Take one down and pass it around, 44 bottles of beer on the wall.

44 bottles of beer on the wall, 44 bottles of beer.
Take one down and pass it around, 43 bottles of beer on the wall.

43 bottles of beer on the wall, 43 bottles of beer.
Take one down and pass it around, 42 bottles of beer on the wall.

42 bottles of beer on the wall, 42 bottles of beer.
Take one down and pass it around, 41 bottles of beer on the wall.

41 bottles of beer on the wall, 41 bottles of beer.
Take one down and pass it around, 40 bottles of beer on the wall.

40 bottles of beer on the wall, 40 bottles of beer.
Take one down and pass it around, 39 bottles of beer on the wall.

39 bottles of beer on the wall, 39 bottles of beer.
Take one down and pass it around, 38 bottles of beer on the wall.

38 bottles of beer on the wall, 38 bottles of beer.
Take one down and pass it around, 37 bottles of beer on the wall.

37 bottles of beer on the wall, 37 bottles of beer.
Take one down and pass it around, 36 bottles of beer on the wall.

36 bottles of beer on the wall, 36 bottles of beer.
Take one down and pass it around, 35 bottles of beer on the wall.

35 bottles of beer on the wall, 35 bottles of beer.
Take one down and pass it around, 34 bottles of beer on the wall.

34 bottles of beer on the wall, 34 bottles of beer.
Take one down and pass it around, 33 bottles of beer on the wall.

33 bottles of beer on the wall, 33 bottles of beer.
Take one down and pass it around, 32 bottles of beer on the wall.

32 bottles of beer on the wall, 32 bottles of beer.
Take one down and pass it around, 31 bottles of beer on the wall.

31 bottles of beer on the wall, 31 bottles of beer.
Take one down and pass it around, 30 bottles of beer on the wall.

30 bottles of beer on the wall, 30 bottles of beer.
Take one down and pass it around, 29 bottles of beer on the wall.

29 bottles of beer on the wall, 29 bottles of beer.
Take one down and pass it around, 28 bottles of beer on the wall.

28 bottles of beer on the wall, 28 bottles of beer.
Take one down and pass it around, 27 bottles of beer on the wall.

27 bottles of beer on the wall, 27 bottles of beer.
Take one down and pass it around, 26 bottles of beer on the wall.

26 bottles of beer on the wall, 26 bottles of beer.
Take one down and pass it around, 25 bottles of beer on the wall.

25 bottles of beer on the wall, 25 bottles of beer.
Take one down and pass it around, 24 bottles of beer on the wall.

24 bottles of beer on the wall, 24 bottles of beer.
Take one down and pass it around, 23 bottles of beer on the wall.

23 bottles of beer on the wall, 23 bottles of beer.
Take one down and pass it around, 22 bottles of beer on the wall.

22 bottles of beer on the wall, 22 bottles of beer.
Take one down and pass it around, 21 bottles of beer on the wall.

21 bottles of beer on the wall, 21 bottles of beer.
Take one down and pass it around, 20 bottles of beer on the wall.

20 bottles of beer on the wall, 20 bottles of beer.
Take one down and pass it around, 19 bottles of beer on the wall.

19 bottles of beer on the wall, 19 bottles of beer.
Take one down and pass it around, 18 bottles of beer on the wall.

18 bottles of beer on the wall, 18 bottles of beer.
Take one down and pass it around, 17 bottles of beer on the wall.

17 bottles of beer on the wall, 17 bottles of beer.
Take one down and pass it around, 16 bottles of beer on the wall.

16 bottles of beer on the wall, 16 bottles of beer.
Take one down and pass it around, 15 bottles of beer on the wall.

15 bottles of beer on the wall, 15 bottles of beer.
Take one down and pass it around, 14 bottles of beer on the wall.

14 bottles of beer on the wall, 14 bottles of beer.
Take one down and pass it around, 13 bottles of beer on the wall.

13 bottles of beer on the wall, 13 bottles of beer.
Take one down and pass it around, 12 bottles of beer on the wall.

12 bottles of beer on the wall, 12 bottles of beer.
Take one down and pass it around, 11 bottles of beer on the wall.

11 bottles of beer on the wall, 11 bottles of beer.
Take one down and pass it around, 10 bottles of beer on the wall.

10 bottles of beer on the wall, 10 bottles of beer.
Take one down and pass it around, 9 bottles of beer on the wall.

9 bottles of beer on the wall, 9 bottles of beer.
Take one down and pass it around, 8 bottles of beer on the wall.

8 bottles of beer on the wall, 8 bottles of beer.
Take one down and pass it around, 7 bottles of beer on the wall.

7 bottles of beer on the wall, 7 bottles of beer.
Take one down and pass it around, 6 bottles of beer on the wall.

6 bottles of beer on the wall, 6 bottles of beer.
Take one down and pass it around, 5 bottles of beer on the wall.

5 bottles of beer on the wall, 5 bottles of beer.
Take one down and pass it around, 4 bottles of beer on the wall.

4 bottles of beer on the wall, 4 bottles of beer.
Take one down and pass it around, 3 bottles of beer on the wall.

3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.

2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    SONG
    assert_equal expected, BeerSong.new.lyrics
  end
end


















































