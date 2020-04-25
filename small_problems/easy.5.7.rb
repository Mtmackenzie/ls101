# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Examples

=begin
create method alphabetizer with parameter of word string
alphabet array
new char array
split downcase string into array, iterate over each character, add chars included in alphabet array to new char array
join new char array to return word
=end

def alphabetizer(word)
  alpha_arr = ('a'..'z').to_a
  new_chars = []
  word.downcase.chars.each do |char|
    new_chars << char if alpha_arr.include?(char)
  end
  new_chars
end

def word_sizes(string)
  word_sizes_hash = Hash.new(0)
  string.split(' ').each do |word|
    word = alphabetizer(word)
    word_sizes_hash[word.size] += 1
  end
  word_sizes_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}