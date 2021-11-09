a = %w(a b c d e)
puts a.fetch(7)
#error
puts a.fetch(7, 'beats me')
#returns 'beats me'
puts a.fetch(7) { |index| index**2 }
#Returns 7(index) times 2, due to the block. has return value of 14