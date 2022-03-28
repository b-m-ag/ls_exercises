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

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']