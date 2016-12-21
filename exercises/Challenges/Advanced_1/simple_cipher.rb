require 'pry'
class Cipher
  attr_reader :key
  def initialize(key=nil)
    @key = key || generate_key
    raise ArgumentError if @key.match(/[^a-z]/) || @key.empty?
  end

  def generate_key
    key = ''
    100.times do
      key << ("a".."z").to_a.sample
    end
    key
  end

  def encode(text)
    text.chars.each_with_index.map do |char, index|
      encode_letter(char, index)
    end.join
  end

  def decode(text)
    text.chars.each_with_index.map do |char, index|
      decode_letter(char, index)
    end.join
  end

  private

  def letter_distance(text_index)
    distance = key[text_index].ord - 'a'.ord
  end

  def encode_letter(letter, index)
    char_num = (letter.ord + letter_distance(index))
    char_num > 122 ? (char_num - 26).chr : char_num.chr
  end

  def decode_letter(letter, index)
    char_num = (letter.ord - letter_distance(index))
    char_num < 97 ? (char_num + 26).chr : char_num.chr
  end
end

