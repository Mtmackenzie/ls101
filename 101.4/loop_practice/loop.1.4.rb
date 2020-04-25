# Modify the code below so the loop stops iterating when the user inputs 'yes'.

# output: loop phrase. input: yes or other.
#  break if answer == "yes"

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end
