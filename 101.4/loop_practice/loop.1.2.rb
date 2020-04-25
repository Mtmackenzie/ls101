# Modify the code so each loop stops after the first iteration.
#  
# options: put a break inside the loop, put a break in the outside loop

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'