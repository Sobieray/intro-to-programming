deck = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,11,11,11,11]
suf_deck = deck.shuffle


class Deal
  attr_accessor :deck, :player

  def initialize(deck, player = [])
    @deck = deck
	  @player = player
  end

  def first_card
	  @player << deck.pop
  end

  def next_card
  	@player << deck.pop
  end
end

class Blackjack
  

  def initialize(hand)
    @hand = hand
  end

  def blackjack_or_bust?
    if @hand == 21
      puts"BLACKJACK YOU WIN"
      
    elsif @hand > 21
      puts"BUST YOU LOSE"

    else @hand < 21
    end
  end
end







#player2 = Deal.new(suf_deck )
#player2.first_card
#puts "the other player has"
#puts player2.next_card
#puts "he has #{player2.player.reduce(:+)}"

puts "Welcome to my BlackJack table"

loop do
 puts "Ready to play? (y/n)"
 play = gets.chomp

  if play == "y"
    my_hand = Deal.new(suf_deck)
    my_hand.first_card
    puts "OK lets deal"
    puts "Here are your cards"
    sleep 2
    puts my_hand.next_card
    puts "You have #{my_hand.player.reduce(:+)}"
    if my_hand.player.reduce(:+) == 21
      puts"BLACKJACK"
      break
    end
    sleep 2
    dealer = Deal.new(suf_deck)
    dealer.first_card
    puts "My card is #{dealer.player.last}"
   
    while my_hand.player.reduce(:+) < 21
        puts"Do you want to hit? (y/n)"
        hit = gets.chomp
        if hit == "y"
          third_card = Deal.new(suf_deck, my_hand.player)
          third_card.next_card
          puts"Your new card is #{third_card.player.last}"
          puts"You now have #{my_hand.player.reduce(:+)}"
          sleep 2
          did_you_win = Blackjack.new(my_hand.player.reduce(:+))
          did_you_win.blackjack_or_bust?
        else hit == "n"
          puts "OK you're staying at #{my_hand.player.reduce(:+)}"
          puts "\nNow it's my turn"
          sleep 2
          puts "I have #{dealer.player.last}"
          break
        end
    end
      if my_hand.player.reduce(:+) < 21
        while dealer.player.reduce(:+) < 17
          puts "My next card is a"
          dealer.next_card
          sleep 2
          puts"#{dealer.player.last}"
          puts"I have #{dealer.player.reduce(:+)}"
        end 
        if my_hand.player.reduce(:+) < 21 && my_hand.player.reduce(:+) > dealer.player.reduce(:+) || dealer.player.reduce(:+) > 21
          puts "YOU WIN"
        else my_hand.player.reduce(:+) < 21 && my_hand.player.reduce(:+) < dealer.player.reduce(:+) 
          puts "Better Luck Next Time"
        end
      end
  else play = "n"
    puts "Ok come back when you're ready"
  end
end







