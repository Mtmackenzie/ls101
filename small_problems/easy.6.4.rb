# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

=begin
Input: array
Output: mutated array (same object) with elements reversed
Rules: do not use reverse method. must mutate object. if one element or empty array, return one object or empty array

DS: array

Algo:
define method takes array as param(ary)
reference = ary.clone
index = 0
opp_index = -1

loop do
break if index == ary.size
 ary[index] = reference[opp_index]

index += 1
opp_index -= 1
end

ary
end

=end

def reverse!(ary)
  reference_ary = ary.clone
  index = 0
  opp_index = -1
  
  loop do
    break if index == ary.size
    ary[index] = reference_ary[opp_index]
    index += 1
    opp_index -= 1
  end
  ary
end

p reverse!([1,2,3,4])
p reverse!([])
p reverse!(%w(a b e d c))
p reverse!(["abc"])

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id
