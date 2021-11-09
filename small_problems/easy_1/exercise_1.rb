def repeat(string, p_integer)
	p_integer.to_i.times {|i| puts string} if p_integer
end

repeat('Hello', 3)