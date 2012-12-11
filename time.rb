today = Time.now.to_i
newyear = Time.utc(2013,"jan",01).to_i
total_seconds_left = newyear - today
seconds = total_seconds_left
minutes = total_seconds_left /60.0
days = total_seconds_left /60.0 /60.0 /24.0
months = total_seconds_left /60.0 /60.0 /24.0 /30.5

dmonths = months * 7
ddays = days * 7
dminutes = minutes * 7
dseconds = seconds * 7 








p"There are #{months}months, #{days}days, #{minutes}minutes, #{seconds}seconds left in the human year"

p"There are #{dmonths}months, #{ddays}days, #{dminutes}minutes, #{dseconds}seconds left in the dog year"
