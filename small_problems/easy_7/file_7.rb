def show_multiplicative_average(arr)
	result = arr.inject(:*).to_f / arr.size
	puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])