require 'pry'

CARDS = ["ace", 2, 3, 4, 5, 6, 7, 8, 9, "J", "Q", "K"]
SHUFFLED_DECK = [].flatten

def prompt(string)
  puts "=> #{string}"
end

def shuffle_deck
  4.times do
    SHUFFLED_DECK << CARDS.shuffle
  end
  SHUFFLED_DECK.flatten
end

def deal_card
  SHUFFLED_DECK[0].slice!(0)
end

def alter_cards!(array)
  face_cards = [ "J", "Q", "K"]
  
  array.map! do |card|
    if card == "ace"
      card = 11
    elsif face_cards.include?(card)
      card = 10
    else
      card
    end
  end
  array
end

def determine_ace(array)
  
  array = alter_cards!(array)

  array.map.with_index do |n, i|
    if array.inject(:+) > 21 && array.include?(11)
      array[i] = 1 if n == 11
    else
      n
    end
  end
  
  array
end

def dealer_initialize
  shuffle_deck
  p card_one = deal_card
  p card_two = deal_card
  p SHUFFLED_DECK
  prompt("Dealer has #{card_one} and unknown.")
  dealer_hand = [card_one, card_two]
  dealer_hand = determine_ace(dealer_hand) # returns array
end

def busted?(points, player)
  if points > 21
    prompt "#{player} busted with #{points}!"
    sleep(1)
  else
    points
  end
end

def user_turn
  p card_one = deal_card
  p card_two = deal_card
  p SHUFFLED_DECK
  prompt "You have #{card_one} and #{card_two}."
  user_hand = [card_one, card_two]
  user_hand = determine_ace(user_hand)
  user_total = user_hand.inject(:+)
  
  loop do
    prompt "Hit or stay? Type H for hit and S for stay."
    user_answer = gets.chomp.upcase
    break if user_answer == "S"
    
    if user_answer == "H"
      new_card = deal_card
      user_hand << new_card
      user_hand = determine_ace(user_hand)
      user_total = user_hand.inject(:+)
      p new_card
      prompt "New card: #{new_card}. Player total: #{user_total}"
      
      break if user_total >= 200
    else
      prompt "Sorry, not a valid answer."
    end

  end
  # busted?(user_total, "You")
  user_total
end

def determine_winner(user, dealer)

  user = busted?(user, "You")
  dealer = busted?(dealer, "Dealer")

  if user.to_i > dealer.to_i
    prompt "~~~~~~You win!~~~~~~~"
  elsif user.to_i < dealer.to_i
    prompt "~~~~~~Dealer wins!~~~~~~"
  elsif user == dealer
    prompt "~~~~~~It's a tie!~~~~~~"
  end
end

loop do # game loop
  system 'clear'
  dealer_hand = dealer_initialize # returns array
  user_points = user_turn  # returns integer

  dealer_total = 0
    loop do
      new_dealer_card = deal_card
      prompt "Dealer hand: #{dealer_hand.join", "}. New dealer card: #{new_dealer_card}."
      sleep(2)
      dealer_hand << new_dealer_card
      dealer_hand_new = determine_ace(dealer_hand)
      dealer_total = dealer_hand_new.inject(:+)
      prompt "Dealer total: #{dealer_total}. Your total: #{user_points}."
      sleep(2)
      break if dealer_total >= 17
    end

  determine_winner(user_points, dealer_total)
  prompt "Play again? Input Y for Yes, and input any other key to exit."
  play_again = gets.chomp.upcase
  break if play_again != "Y"
end

prompt "Thank you for playing Twenty-One! Goodbye!"