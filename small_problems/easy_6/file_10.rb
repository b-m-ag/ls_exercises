def triangle(n)
  1.upto(n) { |x| puts "#{' ' * (n - x)}#{'*' * x}" }
end

triangle(5)
triangle(9)