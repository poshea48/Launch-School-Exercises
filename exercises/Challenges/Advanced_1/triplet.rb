require 'pry'
class Triplet
  attr_reader :sides
  def initialize(num1, num2, num3)
    @sides = [num1, num2, num3].sort
  end

  def sum
    sides.inject(:+)
  end

  def product
    sides.inject(:*)
  end

  def pythagorean?
    (sides[0] ** 2) + (sides[1] ** 2) == (sides[2] ** 2)
  end

  def self.where(hash)
    hash.merge!(:min_factor => 1) if hash[:min_factor] == nil
    results = self.find_sides(hash[:min_factor], hash[:max_factor], hash[:sum])
  end

  def self.find_sides(min_factor, max_factor, sum=nil)
    result = []
    #combinations((min_factor..max_factor).to_a).each do |combo|
      # triplet = Triplet.new(combo[0], combo[1], combo[2])
      # if triplet.pythagorean?
      #   if sum
      #     result << triplet if triplet.sum == sum
      #   else
      #     result << triplet
      #   end
      # end

    (min_factor..max_factor).to_a.permutation(3) do |slice|
      triplet = Triplet.new(slice[0], slice[1], slice[2])
      if triplet.pythagorean? && slice[0] < slice[1] && slice[1] < slice[2]
        if sum
          result << triplet if triplet.sum == sum
        else
          result << triplet
        end
      end
    end
    result 
  end

  # def self.combinations(arr)
  #   arr
  #     .product(arr)
  #     .product(arr)
  #     .map(&:flatten)
  #     .map(&:sort)
  #     .uniq
  #end
end

