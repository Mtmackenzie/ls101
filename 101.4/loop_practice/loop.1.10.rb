# Your friends just showed up! Given the following array of names, 
# use a for loop to greet each friend individually.
# input: friends, output: concatenated friends with greeting
# requirements: for loop

friends = ['Sarah', 'John', 'Hannah', 'Dave']
# Expected output:

# Hello, Sarah!
# Hello, John!
# Hello, Hannah!
# Hello, Dave!

for i in friends
  puts "Hello, #{i}!"
end