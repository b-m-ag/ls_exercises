def fizzbuzz(first, last)
	arr = []
	first.upto(last) {|i| arr << i}
	arr.each_with_index do |int, idx|
		if (int % 3 == 0) && (int % 5 > 0)
			arr[idx] = 'Fizz'
		elsif (int % 5 == 0) && (int % 3 > 0)
			arr[idx] = 'Buzz'
		elsif (int % 3 == 0) && (int % 5 == 0)
			arr[idx] = 'Fizzbuzz'
		end
	end
	arr.join(', ')
end

fizzbuzz(1, 15)