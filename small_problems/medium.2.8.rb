# Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

# Examples:
=begin
Input: integer
Output: integer, next featured number
Rules: featured number: odd, multiple of 7, digits only occur once. Issue an error if there is no next f numb (size - repeat digits)
Problem: starting from given arg, iterate over multiple of 7 until meets requirements, return that integer

DS: array, integers

Algo:
define method called featured, one param n
- seven_multiple = divide n by 7, if even? increase by 1, otherwise increase by 2
loop
  - odd?
  - n.digits.uniq.join.to_i equal to n
  - add 14


=end

def featured(n)
  quotient = n / 7
  if quotient.even?
    seven_multiple = (quotient + 1) * 7
  else
    seven_multiple = (quotient + 2) * 7
  end
  
  loop do
    break if seven_multiple.digits.reverse.uniq.join.to_i == seven_multiple
    seven_multiple += 14
    return "There is no possible number that fulfills those requirements." if seven_multiple.digits.size > 10
  end
  
  seven_multiple
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements