process_the_loop = [true, false].sample

if process_the_loop
	1.times { puts "The loop was processed"}
else
	puts "The loop wasn't processed!"
end