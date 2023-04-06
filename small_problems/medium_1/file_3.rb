require 'pry'

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

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

binding.pry