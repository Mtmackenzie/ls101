# Pick out the minimum age from our current Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# lowest_age = []
# counter = 0

# ages.values.each do |value|
#   break if counter == ages.size
#   current_value = value
#   counter += 1
#   if value < current_value
#     lowest_age << value
#   end
#   lowest_age
# end

# p lowest_age

# produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     # this has to be at the top in case produce_list is empty hash
#     break if counter == produce_keys.size

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits

# ages = [1, 2, 3]
# counter = 0

# ages.each do |x|
#   break if counter == ages.size
  
#   x = current_value
#   counter += 1
#   new_value = x
#   if current_value > new_value
#     "hi"
#   end
# end

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.each do |key, value|
#   ages.delete! if value > 100
# end 

# ages

# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# counter = 0
# minimum_age = ages.values.first

# loop do
#   current_value = ages.values[counter]
  
#   if current_value < minimum_age
#     minimum_age = current_value
#   end
  
#   counter += 1
#   break if counter == ages.size
#   # ages[counter]
#   # current_value = ages.values
#   # counter += 1
#   #   if current_value <= minimum_age.to_s.to_i
#   #     minimum_age.clear
#   #     minimum_age << current_value
# end

# p minimum_age

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

# counter = 0
# minimum_age = ages.values.first

# loop do
#   break if counter == ages.size
#   current_value = ages.values[counter]
  
#   if current_value < minimum_age
#     minimum_age = current_value
#   end
#   counter += 1

# end

# puts minimum_age

counter = 0
minimum_age = ages.values.first

loop do
  break if counter == ages.size
  current_age = ages.values[counter]
  
  if current_age < minimum_age
    minimum_age = current_age
  end
  
  counter += 1
end

puts minimum_age