def leading_substrings(string)
	arr = string.chars
	output_arr = []
	output_str = ''
	arr.size.times do |iteration|
		output_str = arr[0..iteration]
		output_arr << output_str.join
	end
	output_arr
end

def substrings(string)
	final_arr = []
	(0..string.size).each do |idx|
		current_str = string[idx..-1]
		final_arr.concat(leading_substrings(current_str))
	end
	final_arr
end

p substrings('abcde')