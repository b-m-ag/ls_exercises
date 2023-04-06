def rotate_rightmost_digits(int, n)
	rotated_part = int.to_s[-n..-1]
	untouched_part = int.to_s[0..(-n - 1)]
	rotated_part = rotate_string(rotated_part) 
	result = untouched_part + rotated_part
	result.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
	rotate_array(str.chars).join
end

def rotate_integer(int)
	rotate_string(int.to_s).to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
