def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather
#Sunshine is not given a boolean value but a boolean value inside a string, which is evaluated as a string
#Strings are always true so the sunshine variable is always evaluated as true
#You have to change the values in the initial array to be only boolean values