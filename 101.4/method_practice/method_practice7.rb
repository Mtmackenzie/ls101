# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# MY SOLUTION 

# array = []
# array << statement.split(//)

# array = array.flatten

# array.keep_if {|character| character != ' '}

# def select_letter(sentence, character)
#   selected_chars = ''
#   counter = 0

#   loop do
#     break if counter == sentence.size
#     current_char = sentence[counter]

#     if current_char == character
#       selected_chars << current_char
#     end

#     counter += 1
#   end

#   selected_chars.size
# end

# hash = {}
# array.each do |letter|
#   hash[letter] = select_letter(statement, letter)
# end

# p hash

# Launch School solution
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end