def ascii_value(str)
  sum = 0
  str.each_char { |char| sum += char.ord }
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# mystery == .chr
# more than one character brings up error