# Write a method that takes one argument, an array containing integers, 
# and returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

def average(array)
  array.sum.to_f / array.size.to_f
end

puts average([1, 2])
puts average([1, 5, 87, 45, 8, 8]).to_i == 25
puts average([9, 47, 23, 95, 16, 52]).to_i == 40

# # Sum some numbers
# (5..10).reduce(:+)                             #=> 45
# # Same using a block and inject
# (5..10).inject { |sum, n| sum + n }            #=> 45
# # Multiply some numbers
# (5..10).reduce(1, :*)                          #=> 151200
# # Same using a block
# (5..10).inject(1) { |product, n| product * n } #=> 151200
# # find the longest word
# longest = %w{ cat sheep bear }.inject do |memo, word|
#   memo.length > word.length ? memo : word
# end
# longest   
#=> "sheep"

def avg(array)
  array.reduce(:+) / array.count
end

puts avg([1, 2, 3])

def average_again(array)
  sum = array.reduce { |add, number| add + number }
  sum / array.count
end

puts avg([1, 2, 3])
