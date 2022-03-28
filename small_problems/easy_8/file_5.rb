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

def palindromes(str)
	og_arr = substrings(str)
	og_arr.keep_if {|el| palindrome?(el)}
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]