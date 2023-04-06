# Triangle is: 
# - right if one angle is 90 degrees
# - acute if all 3 angles are less than 90 degrees
# - scalene if all 3 sides are of different length

# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0.

# Write a method that takes the 3 angles as arguments, and returns a symbol (:right, :acute, :obtuse, or :invalid)

# Approach: Similar to last problem. First, I want to check if it is a valid triangle and not run anything else if it is not. For this, I will use a helper method that checks to see if all angles sum up to 180 degrees and that all angles are greater than 0. Now, write a helper method for each type of triangle and return true. 

def triangle(angle_1, angle_2, angle_3)
	if is_triangle?(angle_1, angle_2, angle_3)
		triangle_type?(angle_1, angle_2, angle_3)
	else
		:invalid
	end
end

def is_triangle?(ang1, ang2, ang3)
	arr = [ang1, ang2, ang3]
	arr.sum == 180 && arr.all? { |angle| angle > 0}
end

def triangle_type?(ang1, ang2, ang3)
	arr = [ang1, ang2, ang3]
	if arr.any? { |angle| angle == 90}
		:right
	elsif arr.any? { |angle| angle > 90}
		:obtuse
	else
		:acute
	end
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90)
p triangle(50, 50, 50)