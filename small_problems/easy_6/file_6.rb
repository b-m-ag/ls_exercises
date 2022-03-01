def merge(arr_1, arr_2)
	arr_1 | arr_2
end

merge([1, 3, 5], [3, 6, 9])

def alt_merge(arr_1, arr_2)
	new_arr = arr_1 + arr_2
	new_arr.uniq!
end

alt_merge([1, 3, 5], [3, 6, 9])