# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do
  # current_char = alphabet[counter]

#   if current_char == 'g'
#     selected_chars << current_char    # appends current_char into the selected_chars string
#   end

#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars

# loop do
#   current_char = alphabet[counter]
  
#   if current_char == 'g'
#     selected_chars << current_char
#   end
  
#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars

# loop do
#   current_char = alphabet[counter]
  
#   if current_char == 'z'
#     selected_chars << current_char
#   end
  
#   counter += 1
#   break if counter == alphabet.size
# end

# p selected_chars

fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

# loop do
#   current_element = fruits[counter]

#   transformed_elements << current_element + 's'   # appends transformed string into array

#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_elements # => ["apples", "bananas", "pears"]
# p fruits

# loop do
#   current_element = fruits[counter]
  
#   transformed_elements << current_element + 'heyheyhey'
  
#   counter += 1
#   break if counter == fruits.size
# end

loop do
  current_element = fruits[counter]
  
  transformed_elements << current_element + 'yo'
  
  counter += 1
  break if counter == fruits.size
end
  
  

p transformed_elements