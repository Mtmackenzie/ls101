# Odd Numbers
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

numbers = (1..99).to_a

# numbers.each do |num|
#   if num.odd?
#     puts num
#   end
# end
odd_numbers = []
counter = 0

loop do
  break if counter == numbers.size
  current_num = numbers[counter]

  odd_numbers << current_num
  counter += 2
end

puts odd_numbers