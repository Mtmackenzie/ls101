# The code below is an example of an infinite loop. The name describes exactly 
# what it does: loop infinitely. This loop isn't useful in a real program, 
# though. Modify the code so the loop stops after the first iteration.

# output: phrase. input: none. 
# options: put the word break after the puts statement (this allows for one)
# other option: create a counting mechanism that stops when counter == 1 (this allows for easy editing later)

counter = 0

loop do
  puts 'Just keep printing...'
  counter += 1
  # puts 'Just keep printing...'
  break if counter == 5 
end