# Write a method that takes one argument, a string, and returns a new string with 
# the words in reverse order.

# Examples:

def reverse_sentence(string)
  array = string.split(' ')
  array.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'