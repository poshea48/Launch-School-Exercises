def prompt(message)
  puts "=> #{message}"
end

def float?(num)
  num.to_f.to_s == num
end

def integer?(num)
  num.to_i.to_s == num
end

def number?(num)
  float?(num) || integer?(num)
end

name = ''
loop do
  prompt "Welcome to your Mortage Calculater.  Enter your name: "
  name = gets.chomp

  if name.empty?
    prompt "Please enter a name"
  else
    break
  end
end

loop do # main loop
  loan_amt = ''
  apr = ''
  loan_time = ''
  # Ask/validate loan amt
  loop do
    prompt "Enter the loan amount:"
    loan_amt = gets.chomp
    if loan_amt.empty? || loan_amt.to_f < 0
      prompt "Must enter a positive number"
    elsif number?(loan_amt)
      break
    else
      prompt "That is not an valid number"
    end
  end
  l = loan_amt.to_f

  # Ask/validate/convert apr
  loop do
    prompt "Enter the Annual Percentage Rate:"
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0
      prompt "Must enter a positive number"
    elsif number?(apr)
      break
    else
      prompt "That is not an valid number"
    end
  end
  c = (apr.to_f / 100) / 12

  # Ask/validate loan time
  loop do
    prompt "Enter loan duration in years:"
    loan_time = gets.chomp
    if loan_time.empty? || loan_time.to_f < 0
      prompt "Must enter a positive number"
    elsif number?(loan_time)
      break
    else
      prompt "That is not an valid number"
    end
  end
  n = loan_time.to_i * 12
  # Calculate
  p = (l * (c * ((1 + c)**n))) / (((1 + c)**n) - 1)
  rate = p.round(2)

  # Answer
  prompt "So, #{name}, your montly payment will be: $#{rate}"
  prompt "#{name}, would you like to go again?"
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

prompt "Ok, goodbye #{name}"
