# # Bubble Sort
# # Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. In this exercise, you will write a method that does a bubble sort of an Array.

# # A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. If the first of the two elements is greater than the second, then the two elements are swapped. This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# 6	2	7	1	4	Start: compare 6 > 2? Yes
# 2	6	7	1	4	Exchange
# 2	6	7	1	4	6 > 7? No (no exchange)
# 2	6	7	1	4	7 > 1? Yes
# 2	6	1	7	4	Exchange
# 2	6	1	7	4	7 > 4? Yes
# 2	6	1	4	7	Exchange
# 2	6	1	4	7	2 > 6? No
# 2	6	1	4	7	6 > 1? Yes
# 2	1	6	4	7	Exchange
# 2	1	6	4	7	6 > 4? Yes
# 2	1	4	6	7	Exchange
# 2	1	4	6	7	6 > 7? No
# 2	1	4	6	7	2 > 1? Yes
# 1	2	4	6	7	Exchange
# 1	2	4	6	7	2 > 4? No
# 1	2	4	6	7	4 > 6? No
# 1	2	4	6	7	6 > 7? No
# 1	2	4	6	7	1 > 2? No
# 1	2	4	6	7	2 > 4? No
# 1	2	4	6	7	4 > 6? No
# 1	2	4	6	7	6 > 7? No
# 1	2	4	6	7	No swaps; all done; sorted
# We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

=begin
Input: array
Output: same object array, sorted
Rules: could have strings, sort alphabetically. integers sorted value.
Problem: compare each element to el after. If el1 is greater than the el2, then switch those two elem in place. Reassign the el following el1 to be el2, and consider the current el1 to compare to the next el until el1 < el2 or the array ends. If el1 < el2, reassign el2 = el1 and continue the process

DS: array

Algo:
define method takes one param, ary
init lv, el1 and el2, set them to equal ary[0] and ary[1]
init lv no_switch = true

loop from the beginning
  el1 and el2, set them to equal ary[0] and ary[1]
  no_switch = true
  break if no_switch == true

  initialize inner loop
    - see if el1's value is higher than el2
      - if is, switch el1 and el2 in place (reassign), set no_switch to false
        - check to see if element following el1 is nil
          -reassign next el to el2
        -if it is nil, break
      - if not higher, reassign el1 to el2, reassign el2 to the next element
        -if there are no more elements(nil), then break

=end

def bubble_sort!(ary)
  el1 = ary[0]
  el2 = ary[1]
  no_switch = true
  
  loop do
    no_switch = true
    el1, el2 = ary[0], ary[1]
      loop do 
        if el1 > el2 && el2 != nil
          el2_index = ary.index(el2)
          ary[ary.index(el1)] = el2
          ary[el2_index] = el1
          el2 = ary[el2_index]
        elsif el2 == nil
          break
        # else
        #   el2 = 
        end
      end
      break
  end
  ary
end


array = [5, 3]
bubble_sort!(array)
p array #== [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)