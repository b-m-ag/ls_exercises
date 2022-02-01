def short_long_short(string_1, string_2)
	if string_1.length > string_2.length
		full = string_2 + string_1 + string_2
	else
		full = string_1 + string_2 + string_1
	end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"