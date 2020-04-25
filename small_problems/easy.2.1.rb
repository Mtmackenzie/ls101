# Build a program that randomly generates and prints Teddy's age. To get the age, 
# you should generate a random number between 20 and 200.

# Example Output

# Teddy is 69 years old!

# Create method get_age
# Get random number .sample assign to variable
# end
# print concatenation with get_age method embedded

# p "Teddy is #{age} years old!"

# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.

puts "Enter a name:"
name = gets.chomp.capitalize!
  
if name == nil
  name = "Teddy"
end
  
age = (20...200).to_a.sample
puts "#{name} is #{age} years old!"
