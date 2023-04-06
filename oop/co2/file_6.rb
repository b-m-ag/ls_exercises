class Cat
	COLOR = "purple"

	attr_reader :name
	
	def initialize(name)
		@name = name
	end

	def greet
		puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
	end
end

## Instance greet method
## Name variable
## Color variable (CONSTANT)

kitty = Cat.new('Sophie')
kitty.greet