# Triangle is: 
# - equilateral if all 3 sides are of equal length
# - isosceles if 2 sides are of equal length, while the 3rd is different
# - scalene if all 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments
# Return the the following symbols:
# - :equilateral
# - :isosceles
# - :scalene
# - :invalid

# Examples:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# Approach:
# Define a helper method that sorts the given lengths from longest to smallest
# - return the values with that helper method and save the values onto 3 variables
# Start a case statement 

def triangle(value_1, value_2, value_3)
	triangle = nil
	
	long, mid, short = long_to_short(value_1, value_2, value_3)
	
	if valid_triangle?(long, mid, short)
		triangle = triangle_type?(long, mid, short)
	else
		triangle = :invalid
	end

	triangle
end

def triangle_type?(long, mid, short)
	if equilateral?(long, mid, short)
		:equilateral
	elsif scalene?(long, mid, short)
		:scalene
	else
		:isosceles
	end
end

def long_to_short(v1, v2, v3)
	arr = [v1, v2, v3]
	arr.sort!.reverse!
	return arr[0], arr[1], arr[2]
end

def valid_triangle?(long, mid, short)
	mid + short > long
end

def equilateral?(long, mid, short)
	long == short
end

def scalene?(long, mid, short)
	[long, mid, short].uniq == [long, mid, short]
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)