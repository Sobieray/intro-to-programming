


cards = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11]


delt = cards.shuffle

hand = []
hand << delt.pop
hand << delt.pop

dealer =[]
dealer << delt.pop
dealer << delt.pop





	puts"Lets Play BlackJack"
	puts"Here are you cards"
	puts"#{hand}"
	puts"You have #{hand.reduce(:+)}"

	if hand.reduce(:+) == 21
	puts"BlackJack"
	end 
		while hand.reduce(:+) < 21
			puts "Hit or Stay?"
			hit_stay = gets.chomp
			if hit_stay.capitalize == "Hit" 
				puts "Ok \nYour new cards are #{hand << delt.pop} \nyou have #{hand.reduce(:+)}"
				if hand.reduce(:+) == 21
					puts "BlackJack"
					break
				elsif hand.reduce(:+) > 21
					puts "Busted"
					break
				else hand.reduce(:+) < 21 
				end 
			else hit_stay.capitalize == "Stay"
				puts "Ok you are staying at \n #{hand.reduce(:+)}"
				break
			end
		end
		puts"The Dealer has #{dealer.reduce(:+)}"
		
	while dealer.reduce(:+) < 17
		if dealer.reduce(:+) == 21
			puts"BlackJack"
		elsif dealer.reduce(:+) > 21
			puts "Busted"
		else dealer.reduce(:+) < 17
			puts "The Dealer hits"
			dealer << delt.pop
			puts"his new hand is #{dealer.reduce(:+)}"
			  if dealer.reduce(:+) == 21
					puts"BlackJack"
			  elsif dealer.reduce(:+) > 21
				puts "He Busts"
			  else dealer.reduce(:+) < 21 
			  end
		end
	end

		if hand.reduce(:+) <= 21 && hand.reduce(:+) > dealer.reduce(:+) && dealer.reduce(:+) <= 21
			puts "You Win" 
		else puts "You Lose"
		end 















