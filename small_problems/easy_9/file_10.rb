def buy_fruit(arr)
	arr.each_with_object([]) { |e, a| e[1].times{a << e[0]} }
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])