count = 1

loop do
  if count.even?
		puts "#{count} is even!"
	elsif count.odd?
		puts "#{count} is odd!"
	else
		puts "oops!"
	end
	count += 1
	break if count > 5
end
