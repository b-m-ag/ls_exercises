def merge(arr1, arr2)
  merged_no_sort = arr1 + arr2
  merged_yes_sort = []
  loop do
    biggest = merged_no_sort.max
    merged_yes_sort << biggest
    merged_no_sort.delete_at(merged_no_sort.index(biggest))
    break if merged_no_sort.empty?
  end
  merged_yes_sort.reverse
end


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]