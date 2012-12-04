
coke = {"Coke" => 10, "Sprite" => 9, "Gingerale" => 5, "Fanta" => 15, "Diet" => 7}

def not_empty(machine)
	machine.each do |soda, quanity|
		return true if quanity > 0 
	end 
	return false
end
	
while not_empty(coke)


			while true
			puts "What type of soda do you want?"
			type = gets.chomp.capitalize
				if coke.has_key?(type)
					puts "ok we have that"
					break
				else 
					puts "we don't have that"
				end
			end

			while true
			puts "How many #{type}s would you like?"
			amount = gets.chomp.to_i
				if coke[type] >= amount
					puts "You want #{amount} #{type}s"
					break
				elsif coke[type] < amount
					puts "We don't have that many"
				end
			end

			while 
				if coke[type] >= amount
					puts "There are #{coke[type]} #{type}s in the machine"
					puts "You ordered #{amount} #{type}s"
					coke[type] -= amount
					puts "There are #{coke[type]} left in the machine"
				end
			end

	coke.each do |type, quanity|
		puts "Now there are: #{quanity} #{type}s in the machine"
	end

end



