#intro to programming week four / learning arrays

def start
  	"Let's find out how long and at what temperature water will boil based upon your elevation"
end

#boiling point of water calculated for elevation
def boiling_point(elevation, boiling_ft)
  	elevation * boiling_ft + 100
end

#convert celcius to farenheit
def celcius_to_farenheit(temp_of_boil)
	1.8 * temp_of_boil + 32
end

#is this a high elevation true or flase?
def boiling_elevation?(elevation, low_elevation = 1000)
  	if elevation > low_elevation
  		return 1 
  	elsif elevation < low_elevation
  		return 0
  	end

  	#elevation[0] > low_elevation
end 

#assumed time for elevation
def time_elevation(amount_water, time)
  	amount_water * time
end


elevation = [6000, 5000, 0, 100, 500, 1000, 2500]
elevation_shuffle = elevation.shuffle[0]
boiling = boiling_elevation?(elevation_shuffle)
boiling_ft = -0.0012
amount_water = [1, 2, 3, 4, 5]
amount_shuffle = amount_water.shuffle[0]
time = [1, 2]
temp_of_boil = boiling_point(elevation_shuffle, boiling_ft)



#output
puts start

puts "You are boiling water at an elevation of #{elevation_shuffle}ft"

puts "Water at an elevation of #{elevation_shuffle}ft boils at #{boiling_point(elevation_shuffle, boiling_ft).round(4)} degrees celcius or #{celcius_to_farenheit(temp_of_boil).round(4)} degrees farenheit"

puts "Is #{elevation_shuffle}ft a high elevation? #{boiling_elevation?(elevation_shuffle)}"

puts "If you boil #{amount_shuffle}cup of water at #{elevation_shuffle}ft it will take #{time_elevation(amount_shuffle, time[boiling])}min"


