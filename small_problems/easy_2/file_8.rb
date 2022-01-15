def get_integer
	puts "Please enter an integer greater than 0"
	int = gets.chomp.strip.to_i
	int
end

def add(num)
	sum = (1...num).sum #sum is a method
	puts "The sum of the integers between 1 and #{num} is #{sum}"
end

def multiply(num)
	product = (1..num).inject(:*)
	puts "The prodcut of the integers between 1 and #{num} is #{product}"
end

integer = get_integer
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.strip
if operation == 's'
	add(integer)
elsif operation == 'p'
	multiply(integer)
end
