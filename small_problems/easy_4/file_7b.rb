HEX_NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
	'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(str)
	hex_chars = str.upcase.split('').map { |char| HEX_NUMBERS[char] }
	hex_chars.reverse!
	final_value = 0
	hex_chars.each_with_index {|hex, i| final_value = final_value + (hex * (16 ** i)) }
	final_value
end

puts hexadecimal_to_integer('4D9f') == 19871