def tip_calc(bill, tip_perc)
	tip = (tip_perc / 100) * bill
	return tip.round(2)
end

puts "What is the bill?"
input_bill = gets.chomp.strip.to_f

puts "What is the tip percentage? (Example: '15' for 15%)"
input_tip_perc = gets.chomp.strip.to_f

final_tip = tip_calc(input_bill, input_tip_perc)
total_w_tip = input_bill + final_tip

puts "The tip is $#{final_tip}"
puts "Your total is $#{total_w_tip}"
