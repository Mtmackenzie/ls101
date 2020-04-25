# Write a program that prompts the user for two positive integers, 
# and then prints the results of the following operations on those 
# two numbers: addition, subtraction, product, quotient, remainder, 
# and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

puts "Enter the first number:"
number_one = gets.chomp.to_i

puts "Enter the second number:"
number_two = gets.chomp.to_i

operations = %w(/)
counter = 0
answers = []

# operations.each do |operation|
#   answers << number_one + operation.to_i + number_two
#   puts "#{number_one} #{operation} #{number_two} = #{answers}"
# end

# number_one = 2
# number_two = 5

loop do
  break if counter == operations.size
  answers << number_one.to_i + operations[counter] + number_two.to_i
  p answers
  # "#{number_one} #{operations[counter]"
  counter += 1
end