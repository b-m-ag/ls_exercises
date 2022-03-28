def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3) / 3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
	when 0..60 	 then 'F'
	else 				  		'Extra Credit'
  end
end
p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
p get_grade(103, 140, 103)