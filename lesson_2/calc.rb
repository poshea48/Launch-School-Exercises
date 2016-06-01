require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
  x = "random code"
  word
  
end

prompt MESSAGES['welcome']#{}"Welcome to Calculator!  Enter your name"
name = ''
loop do
  name = gets.chomp
  if name.empty?()
    prompt MESSAGES['valid_name']
  else
    break
  end
end

loop do # main loop
  num1 = ''
  num2 = ''
  loop do
    prompt MESSAGES['number1']
    num1 = gets.chomp

    if number?(num1)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  loop do
    prompt MESSAGES['number2']
    num2 = gets.chomp

    if number?(num2)
      break
    else
      prompt MESSAGES['valid_number']
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

  prompt(operator_prompt)
  action = ''
  loop do
    action = gets.chomp
    if %w(1 2 3 4).include?(action)
      break
    else
      prompt "must choose 1, 2, 3, 4"
    end
  end

  prompt "#{operation_to_message(action)} the two numbers"
  result = case action
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
           end

  prompt "the result is #{result}"
  prompt "Would you like to go again #{name}?"
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt "Ok, goodbye #{name}"
