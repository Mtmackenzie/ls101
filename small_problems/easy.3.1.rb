iteration_count = ["1st", "2nd", "3rd", "4th", "5th"]
user_number = []
counter = 0

loop do
  break if counter == iteration_count.size

  puts "Enter the #{iteration_count[counter]} number:"
  user_number << gets.chomp.to_i
  counter += 1
end

puts "Enter the last number:"
last_number = gets.chomp.to_i

if user_number.include?(last_number)
  puts "The number #{last_number} appears in #{user_number}."
else
  puts "The number #{last_number} does not appear in #{user_number}."
end