=begin

Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.

## UNDERSTAND THE PROBLEM ##
simple restatement:
  a b c
  d e f

would equal
  d a
  e b
  f c
basically rotate 90 degrees clockwise ->

input: matrix (could be non-square)
output: matrix rotated 90 degrees clockwise ->

examples/rules:

## THEORIES/POSSIBLE METHODS? ##

## ALGORITHM ##
high-level:
  - 

current data state (if needed):

+formal (if needed):

=end

def rotate90(mat)
  random = {}
  mat.each do |e|
    accumulator = 0
    e.each_with_index do |e, idx|
      if random.has_key?(idx)
        random[idx] << e if idx == accumulator
      else
        random[idx] = [e] if idx == accumulator
      end
      accumulator += 1
    end
  end
  random.values.map {|e| e.reverse}
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2