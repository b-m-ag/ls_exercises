def multiply_list(arr1, arr2)
	new_arr = []
	arr1.size.times {|e| new_arr << arr1[e] * arr2[e]}
	new_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def alt_multiply_list(arr1, arr2)
	arr1.zip(arr2).map {|arr| arr.inject(:*)}
end

alt_multiply_list([3, 5, 7], [9, 10, 11])