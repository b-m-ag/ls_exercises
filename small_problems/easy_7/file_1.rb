def interleave(arr1, arr2)
	new_arr = []
	arr1.length.times {|x| new_arr << arr1[x] << arr2[x]}
	new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

def alt_interleave(arr1, arr2)
	arr1.zip(arr2).flatten
end

alt_interleave([1, 2, 3], ['a', 'b', 'c'])