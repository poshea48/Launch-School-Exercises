# input
#   English text

# output
#   encoded version of that text

# abstraction
#   spaces and punctuation removed and downcased
#   broken into rows and columns.
#   number of columns should be decided by the lenght of the message
#   length perfect square =>(4, 9, 16, 25, 36, 49, 64, 81, 100 etc)
  
#   if number of characters != perfect square
#     number of columns == number of columns of next larger perfect square
#       ex. number of characters == 5 => number of columns == 3 ()

# algorithm
#   compacted = phrase.scan(/\w+/).join
#   characters = compacted.size

#   if Math::sqrt(characters).integer?
#     number_of_colunms = Math::sqrt(characters)
#     number_of_rows    = Math::sqrt(characters)
#   else
#     loop do
#       break if Math::sqrt(characters).integer?
#       characters += 1
#     end
#     number_of_colunms = Math::sqrt(characters)
#   end
require 'pry'

class Crypto
  def initialize(phrase)
    @phrase = phrase
    @compacted = phrase.scan(/\w+/).join.downcase
  end

  def normalize_plaintext
    @compacted
  end

  def size
    Math::sqrt(@compacted.size).ceil
  end

  def plaintext_segments
    @compacted.scan(/.{1,#{size}}/)
  end

  def ciphertext
    encode.join
  end

  def normalize_ciphertext
    encode.join(' ')
  end

  private

  def encode
    cipher = []
    (0...size).each do |column|
      cipher << plaintext_segments.map {|row| row[column]}
    end
    cipher.map(&:join)
  end
end

crypto = Crypto.new('If man was meant to stay on the ground god would have given us roots')
p crypto.ciphertext

































