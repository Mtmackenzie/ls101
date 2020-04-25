# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

=begin
input: string, output: hash with integers

rules: "word" means string connected by anything except space. could include punctuation. string can be empty.

DS: string, array, hash

Algo:
create empty hash word_sizes = Hash.new(0) with default value
split string into array divided by spaces, iterate over array and count number of characters in each expression(?)
  after count number of words, add to empty hash as key/value pair. if key already exists, += 1

=end

def word_sizes(string)
  word_sizes_hash = Hash.new(0)
  string.split(' ').each do |word|
    word_sizes_hash[word.size] += 1
  end
  word_sizes_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}