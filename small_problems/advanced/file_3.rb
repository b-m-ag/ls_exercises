def transpose(mat)
  new_0 = []
  new_1 = []
  new_2 = []
  mat.each do |row|
    row.each_with_index do |ele, idx|
      if idx == 0
        new_0 << ele
      elsif idx == 1
        new_1 << ele
      else
        new_2 << ele
      end
    end
  end
  [new_0, new_1, new_2]
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]