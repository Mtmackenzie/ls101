# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

=begin
Input: integer, number of digits called digits
Output: index of first fib number that has digits specified
Rules: First fib number has index 1

DS: array

Algo:
current_num = 0
new_num = 1
fib_nums = [current_num, new_num]

loop
  break if current_num.digits.size == digits
  current_num = new_num
  new_num += current_num
  fib_nums << new_num
end
  
fib_nums
=end

def find_fibonacci_index_by_length(digits)
  current_num = 0
  new_num = 1
  index = 1
  # fib_nums = [current_num, new_num]

  loop do
    break if new_num.digits.size == digits
    current_num += new_num
    index += 1
    break if current_num.digits.size == digits
    new_num += current_num
    index += 1
  end
  
  index

end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
# # You may assume that the argument is always greater than or equal to 2.