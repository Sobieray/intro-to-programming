
#intro to programming week three / learning methods

def start
  "Let's find out how long and at what temperature water will boil based upon your elevation"
end

#boiling point of water calculated for elevation
def boiling_point(elevation, boiling_ft)
  (elevation * boiling_ft) + 100
end

#convert celcius to farenheit
def celscius_to_farenheit(boiling_point)
	9/5 * boiling_point + 32
end

#is this a high elevation true or flase?
def boiling_elevation?(elevation, low_elevation = 1000)
  elevation > low_elevation
end 

#assumed time for elevation
def time_elevation(amount_water, mountian_time)
  amount_water * mountian_time
end

#variables
elevation = 6000
boiling_ft = -0.0012
cups_water = 1
sealevel_time_minutes = 1
mountian_time_minutes = 2


#output
puts start
puts "You are boiling water at #{elevation}feet"
puts "Water at an elevation of #{elevation}ft boils at #{boiling_point(elevation, boiling_ft)} degrees celcius or #{celscius_to_farenheit(boiling_point)} degrees farenheit"
puts "Is #{elevation}ft a high elevation? #{boiling_elevation?(elevation)}"
puts "If you boil #{amount_water}cups of water at #{elevation}feet it will take #{time_elevation(amount_water, mountian_time_minutes)}minutes"










