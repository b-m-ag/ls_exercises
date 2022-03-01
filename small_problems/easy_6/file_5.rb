def reverse(array)
  new_arr = []
	array.reverse_each {|e| new_arr << e}
	new_arr
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true


# Using inject alternative
def inject_reverse(array)
	array.each_with_object([]) {|e, a| a.unshift(e)}
end

inject_reverse([1,2,3,4]) == [4,3,2,1]          # => true
inject_reverse(%w(a b e d c)) == %w(c d e b a)  # => true
inject_reverse(['abc']) == ['abc']              # => true
inject_reverse([]) == []                        # => true