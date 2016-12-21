class Sieve
  def initialize(end_num)
    @array = (2..end_num).to_a
    @result = []
  end

  def primes
    @array.each do |number|
      @array.reject! do |multiple|
        (number != multiple) && (multiple % number == 0)
      end
    end
    @array
  end
end


sieve = Sieve.new(30)
p sieve.primes