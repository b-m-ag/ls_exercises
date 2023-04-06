=begin
Write a method that computes the difference:
the square of the sum of the first n positive integers - the sum of the squares of the first n positive integers

simple restatement: subtract (the sum of the squares of (1..n)) from the square of the sum of (1..n)

input: integer
output: integer (refer to restatement)

examples/rules:
  - if input is 1, return zero

## THEORIES/POSSIBLE METHODS? ##

## ALGORITHM ##
high-level:
  - sum all numbers from 1 to n
  - find the square of that and assign it to variable x
  - for every number from 1 to n, accumulate its square

current data state (if needed):

+formal (if needed)

=end

def sum_square_difference(num)
  x = (1..num).to_a.inject(:+)
  x = x ** 2

  y = (1..num).to_a.map {|e| e ** 2}
  y = y.inject(:+)

  x - y
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150