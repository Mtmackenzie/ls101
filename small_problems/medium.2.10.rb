# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# Examples:

=begin
Input: integer
Output: integer
Rules:
Problem: finding the difference between the square of the sum of integers 1 - n, and the sum of the square of integers 1 - n
  iterate over integers upto n, collect the sums in two different lvs, find difference between sums squared and the squared sums summed

DS: lvs

Algo:
define method contains n
  - sum = 0
  - sums_squared = 0
  - iterate over the n's using upto method
    - reassign each lv using num
      - sum += num
      - sums_squared += num**squared
  -find and return the difference between sum squared and sums_squared

=end

def sum_square_difference(n)
  sum = 0
  sums_squared = 0
  1.upto(n) do |num|
    sum += num
    sums_squared += num**2
  end
  sum**2 - sums_squared
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150