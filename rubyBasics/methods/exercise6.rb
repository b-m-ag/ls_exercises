daylight = [true, false].sample

def time_of_day(daylight)
	print "It's daytime!" if daylight == true
	print "It's nightime!" if daylight == false
end

time_of_day(true)
time_of_day(false)
time_of_day(false)