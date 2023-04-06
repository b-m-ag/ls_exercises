# Define a method that Bubble sorts an array. In short, a bubble sort makes multiple passes (iterations) through an array. On each iterations, each pair of consecutive elements is compared. If the first is greater, the two elements are swapped. This is repeated until a complete pass or iteration is made without performing any swaps]
# Note that your sort will be "in-place"; that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements

# P => [UNDERSTAND THE] PROBLEM
# input: array
# output: array (same object)
# rules:
# 		Explicit requirements:
# 		- The sort will be "in-place", the same object that is passed in must be returned, albeit mutated
#			- The array will contain at least 2 elements
#			Implicit requirements:
#			- This sort should sort arrays with string and number objects

# D/A => DATA STRUCTURE / ALGORITHM
# Algorithm:
# - define a loop with access to the current element and the array index
# - define a variable current_num and assign to it the value that variable idx points to
# - defia a variable next_num and assing to it the value that arr[idx + 1] would point to
# - unless element is at arr[idx - 1], if current_num > next_num then arr[idx], arr[idx + 1] == next_num, current_num

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
end

array = [5, 3]
p bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
