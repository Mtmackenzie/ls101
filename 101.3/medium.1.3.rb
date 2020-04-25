# Alan wrote the following method, which was intended to show all of the 
# factors of the input number:

def factors(number)
  if number <= 0
    puts "Please insert integer > 0."
  else
    divisor = number
    factors = []
    begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    factors
  end
end

number = -1
p factors(number)

def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

number = -10
p factors(number)
    

# Alyssa noticed that this will fail if the input is 0, or a negative number, 
# and asked Alan to change the loop. How can you make this work without using 
# begin/end/until? Note that we're not looking to find the factors for 0 or 
# negative numbers, but we just want to handle it gracefully instead of raising 
# an exception or going into an infinite loop.