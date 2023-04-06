=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Return an error message if there is no next featured number.

## UNDERSTAND THE PROBLEM ##
simple restatement: returns next featured number that is greater than input unless there is no featured number greater than it (return error if that happens)

input: single integer
output: next featured number, error message if there is none

examples/rules:
  - featured number is a multiple of 7 AND its digits occur exactly once each
  - error message if no other number

## THEORIES/POSSIBLE METHODS? ##

## ALGORITHM ##
high-level:
  - 
  - keep counter going after input until the number meets requirements
  - 

current data state (if needed):

+formal (if needed):
=end
def featured(num)
  loop do
    num += 1  
    if featured_num?(num)
      return num
      break
    elsif num == 9_876_543_210
      return "error"
      break
    end
  end
  num
end

def featured_num?(num)
  num % 7 == 0 && num.odd? && num.to_s.chars.uniq.join.to_i == num
end

p featured(12) # == 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

=begin
DESCRIPTION:

Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0

triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s

triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

triple_double(12345, 12345) == 0

triple_double(666789, 12345667) == 1

## UNDERSTAND THE PROBLEM ##
simple restatement:

input: two numbers
output: 1 if straight triple AND straight double of "same" number, 0 otherwise

examples/rules:
  - straight triple is a number stated 3 consecutive times
  - straight double is a number stated 2 consecutive times
  - integer order has to be kept

## THEORIES/POSSIBLE METHODS? ##

## ALGORITHM ##
high-level:
  - if any straight triple in num1?
    - if any straight double of same number in num2?
      - return one
    - else, return zero
  - else, return zero
  - 

current data state (if needed):

+formal (if needed):
  - if straight_triple? != nil
    - if straight_double?(number, num2)
      - return one
    - else, return zero
  - else, return zero

=end

def triple_double(num1, num2)
  if straight_triple(num1) != nil
    number = straight_triple(num1)
    straight_double?(number, num2) ? (return 1) : (return 0)
  else
    return 0
  end
end

def straight_triple(num1)
  numbers = num1.to_s.chars
  unique = numbers.uniq
  straight_triple_num = nil
  unique.each {|e| straight_triple_num = e if numbers.count(e) >= 3}
  straight_triple_num == nil ? straight_triple_num : straight_triple_num.to_i
end

def straight_double?(number, num2)
  numbers = num2.to_s.chars
  numbers.count(number.to_s) == 2
end

p triple_double(451999277, 41177722899) == 1

p triple_double(1222345, 12345) == 0

p triple_double(12345, 12345) == 0

p triple_double(666789, 12345667) == 1

p triple_double(1112, 122) == 0

p triple_double(10560002, 100) == 1
