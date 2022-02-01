DIGITS = {
	0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
}

def integer_to_string(int)
	digits = int.digits.reverse.map { |char| DIGITS[char] }
	output = digits.join
end

def signed_integer_to_string(num)
  case num <=> 0
  when -1 then "-#{integer_to_string(-num)}"
  when +1 then "+#{integer_to_string(num)}"
  else         integer_to_string(num)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'