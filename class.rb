
class Car



	attr_accessor :state

	def initialize(state = "parked")
		@state = state
	end

	def driving
		@state = 25
	end

	def stopping
		@state = "breaking"
		puts "now I am breaking...."
		sleep 2
		@state = 5

	end
end



class SportsCar < Car
	def driving 
		@state = 60
	end

	def stopping
		@state = "breaking"
		puts "now I am breaking...."
		sleep 2
		@state = 20

	end


end



my_car = Car.new

puts "my car is #{my_car.state}"

my_car.driving
puts "now I am driving at #{my_car.state} mph"

my_car.stopping
puts "I slowed down to #{my_car.state} mph"

my_sportster = SportsCar.new

puts "my car is #{my_sportster.state}"
my_sportster.driving
puts "now I am driving at #{my_sportster.state} mph"
my_sportster.stopping
puts "I slowed down to #{my_sportster.state} mph"


