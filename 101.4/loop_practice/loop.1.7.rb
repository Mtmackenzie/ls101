# The following code outputs a countdown from 10 to 1. 
# Modify the code so that it counts from 1 to 10 instead.
# output: 1...10, input: none
# process: change count numbers and change -= 1 to +=1

count = 1

until count > 10
  puts count
  count += 1
end