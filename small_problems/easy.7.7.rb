# Multiplicative Average
# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples:
=begin
Input: array of integers
Output: float rounded to 3 decimal places, inside a string
Rules: integers, but the division float

DS: array, floats

Algo:
.inject, size find the average, print result
define method, takes ary of integers
call reduce(:*) on ary, save lv multiplication
call puts, call sprintf, pass this ('%.3f', divide multiplication by ary.size.to_f)
=end

def show_multiplicative_average(ary)
  multiplication = ary.reduce(:*).to_f
  puts sprintf('%.3f', multiplication/(ary.size))
end



show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667