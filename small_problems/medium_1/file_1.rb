def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
	rotate_array(str.chars).join
end

def rotate_integer(int)
	rotate_string(int.to_s).to_i
end