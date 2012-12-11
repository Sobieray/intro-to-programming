today = Time.now.to_i
new_year = Time.utc(2013,"jan",01).to_i
total_seconds_left = new_year - today
seconds = total_seconds_left % 60
human_time_left = (total_seconds_left - seconds) / 60
minutes = human_time_left % 60
human_time_left = (human_time_left - minutes) / 60
hours = human_time_left % 24
human_time_left = (human_time_left - hours) / 24
days = human_time_left % 30.5
months = (human_time_left -days) / 30.5


dog_time_left = total_seconds_left * 7




dog_months = months * 7
dog_days = days * 7
dog_minutes = minutes * 7
dog_seconds = seconds * 7 








p"There are #{months}months, #{days}days, #{minutes}minutes, #{seconds}seconds left in the human year"

p"There are #{dog_months}months, #{dog_days}days, #{dog_minutes}minutes, #{dog_seconds}seconds left in the dog year"
