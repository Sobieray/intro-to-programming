#BlackJack Game


#variables

cards = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11]


# shuffle the deck of cards

 
 	 your_first_card = cards.shuffle.pop
 
 	 your_seccond_card = cards.shuffle.pop

 	 your_third_card = cards.shuffle.pop

 	 dealers_first_card = cards.shuffle.pop

 	 dealers_second_card = cards.shuffle.pop



#loop to play BlackJack

 def blackjack(card1,card2,card3,card4,card5)
 	
	if card1 + card2 == 21
		puts "BLACKJACK"
	elsif card1 + card2 > 21
		puts"BUSTED"
	else
		card1 + card2 < 21
		puts "you are at #{card1 + card2} would you like to hit or stay?"
	end
end

def hit_or_stay (card1,card2,card3,card4,card5)

	 		hitme = gets.chomp
	 	
	if hitme == "stay"
		puts "your are staying at #{card1 + card2}"
		puts "the dealers next card is #{card4}"
		puts "the dealer has #{card4 + card5}"
	else hitme == "hit"
		puts "ok your next card is #{card3}"
	end
	
	if card1 + card2 + card3 == 21
		puts "BLACKJACK"
	elsif  card1 + card2 + card3 < 21
		puts "your now have #{card1 + card2 + card3}"
		puts "the dealers next card is #{card4}"
		puts "the dealer has #{card4 + card5 }"
	elsif card1 + card2 + card3 > 21
			puts "You BUST"
	end
end


 def winnerwinner (card1,card2,card3,card4,card5)

	if (card1 + card2  < card4 + card5) || (card1 + card2 + card3 < card4 + card5)
		puts "You Lose"
	else (card1 + card2  > card4 + card5) || (card1 + card2 + card3 > card4 + card5)
		puts "You Win"
	end

end







	puts "Would you like to play BlackJack?"
	lets_play = gets.chomp
		if lets_play == "yes"
			puts "Ok Lets Deal"
			puts""
		else
			puts "To Bad You are Playing Anyway"
		end


		
			puts "Your first card is #{your_first_card}"
			puts "The dealers first card is #{dealers_first_card}"
			puts "Your second card is #{your_seccond_card}"
			puts"#{blackjack(your_first_card, your_seccond_card, your_third_card, dealers_second_card, dealers_first_card)}"
			puts"#{hit_or_stay(your_first_card, your_seccond_card, your_third_card, dealers_second_card, dealers_first_card)}"
			puts"#{winnerwinner(your_first_card, your_seccond_card, your_third_card, dealers_second_card, dealers_first_card)}"

		

	



