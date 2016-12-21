# input
#   class method word string
#   raise exception if not string?
#   validate string?


# output
#   translate word to pig_latin string

# rules
#   word begins with a vowel => add an "ay" to end of word
#   word begins with a consonant => move consonant to end of word then add "ay" to end

# alogrithm
#   if word[0] =~ /[aeiouAEIOU]/
#     vowel_change(word)
#   else
#     consonant_change(word)
#   end

#   def vowel_change(word)
#     "#{word}ay"
#   end

#   def consonant_change(word)
#     "#{word[1..-1]}#{word[0]}ay"
#   end

class PigLatin
  def self.translate(phrase)
    phrase.split.map {|word| translate_word(word.downcase)}.join(' ')
  end

  private

  def self.translate_word(word)
    if word =~ /\A[aeiou]/
      vowel_change(word)
    elsif word =~ /\Athr|sch|squ/
      consonant_change(word, 3)
    elsif word =~ /\Ach|qu|th/
      consonant_change(word, 2)
    elsif word =~ /\A[^aeiou][^aeiou]/
      "#{word}ay"
    else
      consonant_change(word, 1)
    end
  end

  def self.vowel_change(word)
    "#{word}ay"
  end

  def self.consonant_change(word, num)
    "#{word[num..-1]}#{word[0..num - 1]}ay"
  end
end

p PigLatin.translate('quick fast run')


