# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

frequency_hash = {}

statement.chars.each do |char|
  frequency_hash[char] = statement.count(char)
end

p frequency_hash
