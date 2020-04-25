# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# TypeError - can't combine string with integer. One way is to save value of 
# numbers and turn them into a string. Other way is to add .to_s to end of nums.

puts "the value of 40 + 2 is " + (40 + 2).to_s

num = 40 + 2

puts "the value of 40 + 2 is #{num}"   # string interpolation - could have added integers directly here