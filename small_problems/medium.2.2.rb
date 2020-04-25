# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Examples:

=begin 
Input: string, word
Output: boolean
Rules: argument can be lowercase, word's partner letter is also present in the word, return false
Problem: convert arg to uppercase. iterate over each letter of the word, if word includes the partner letter, return false. otherwise true.

DS: strings, arrays

Algo:
define method block_word?, str
blocks = ["B0", 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']
str = str.upcase
convert str into array of characters, iterate over that array letter
  - block_str = find str in the blocks ary containing that letter using select, call join on it
    - block_str.slice! letter
    - other_letter = block_str
  - if letter's other letter is included in the array, return false


true
=end

def block_word?(str)
  blocks = ["B0", 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']
  str = str.upcase
  
  str.chars.each do |letter|
    block_str = blocks.select {|string| string.include?(letter)}.join
    block_str.slice!(block_str.index(letter))
    other_letter = block_str
    return false if str.include?(other_letter)
  end
  
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true