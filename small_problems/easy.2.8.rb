# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers 
# between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720

puts "Enter an integer greater than 0."
integer = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

if operation == 's'
  operation = "sum"
  operation_answer = (1..integer).sum

elsif operation == 'p'
  operation = "product"
  # operation_answer = (1..integer).reduce(1, :*)
  total = 1
  1.upto(integer) { |n| total *= n}
  operation_answer = total
end

puts "The #{operation} of the integers between 1 and #{integer} is #{operation_answer}."