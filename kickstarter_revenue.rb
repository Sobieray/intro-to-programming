launch_date = Time.utc(2009,"apr",28).to_i
today = Time.now.to_i
seconds = today - launch_date
days = seconds /60 /60 /24
revenue = 0.05 * 305000000
day_average = revenue / days
day_average = day_average.round

p "Kickstarter has made an average daily income of $ #{day_average}"


