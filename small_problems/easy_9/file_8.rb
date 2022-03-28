def sequence(count, first_num)
	arr = []
	if count == 0
		arr
	else
		current_num = first_num
		count.times do
			arr << current_num
			current_num += first_num
		end 
	end
	arr
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []