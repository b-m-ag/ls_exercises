# Modify the following code to accept a string containing a first and last name. The name should be split into two instance variables in the setter method, then joined in the getter method to form a full name

class Person
	attr_accessor :first, :last
	def name=(name)
		self.first, self.last = name.split
	end

	def name
		"#{first} #{last}"
	end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

# John Doe