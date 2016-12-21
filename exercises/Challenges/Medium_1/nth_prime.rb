# input
#   end number, n

# output
#   the nth prime number

# algorithm
#   primes = []

#   num = 2
#   loop do
#     break if primes.size == n
#     primes << num if prime?(num)
#     num += 1
#   end

  # def prime?(num)
  #   raise ArgumentError if num <= 0
  #   num.downto(1).select {|divisor| num % divisor == 0}.size == 2
  # end

class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0
    num = 3
    primes = [2]
    loop do
      break if primes.size == n
      primes << num if prime?(num)
      num += 2
    end
    primes.last
  end

  private

  def self.prime?(num)
    (Math.sqrt(num).to_i).downto(1).select {|divisor| num % divisor == 0}.size == 1
  end
end

p Prime.nth(10001)
