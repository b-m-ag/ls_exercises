
DEGREE = "\xC2\xB0"

def dms(angle)
	degrees, min_sec = decimal_conversion(angle)
	minutes = min_sec * 60
	minutes, seconds = decimal_conversion(minutes)
	seconds *= 60
	seconds = seconds.round
	puts format(degrees, minutes, seconds)
end

def decimal_conversion(float)
	whole_num = float.to_i
	decimal = float - float.to_i.to_f
	return whole_num, decimal.round(6)
end

def format(degrees, minutes, seconds)
	degrees = degrees.to_i
	minutes = minutes.to_i
	seconds = seconds.to_i
	minutes = add_zero(minutes)
	seconds = add_zero(seconds)
	deg_output = %Q(#{degrees}#{DEGREE})
	min_output = %Q(#{minutes}')
	sec_output = %Q(#{seconds}")
	final_output = deg_output + min_output + sec_output
	final_output
end

def add_zero(num)
	if num < 10
		"0#{num}"
	else  
		num
	end
end

dms(30)
dms(76.73)
dms(254.6)
dms(93.034773)
dms(0)
dms(360)