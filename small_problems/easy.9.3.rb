# Always Return Negative
# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# Examples

=begin
Input: number
Output: negative of that number or the num if negative
Rules: return original number if negative, return negative of number if positive
Problem: check if it's neg and return if true, otherwise subtract the number twice from itself

DS: nums

Algo:
define a method called negative, takes 1 integer
- return integer if integer.negative?
- subtract the number from itself * 2
=end

def negative(num)
  return num if num.negative?
  -num
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby