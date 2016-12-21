class PerfectNumber
  def self.classify(number)
    raise RuntimeError, "No dice" if number < 0
    
    sum = (1...number).select {|divisor| number % divisor == 0}.inject(:+)
    case 
      when sum == number then 'perfect'
      when sum > number  then 'abundant'
      else                    'deficient'
    end
  end
end

p PerfectNumber.classify(13)

