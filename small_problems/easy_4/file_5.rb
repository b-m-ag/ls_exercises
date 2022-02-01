# Method takes in 1 argument, x
# Find multiples of 3 or 5 that lie between 1 and x
# Compute the sum of those multiples
# Ex: If x == 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)

def multisum(x)
	arr = []
	(1..x).each {|num| arr << num if num % 3 == 0 || num % 5 == 0}
	arr.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168