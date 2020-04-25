require 'pry'

# def determine_ace(points_array)
  
#   points_array.map! do |n|
#     if n == "ace"
#       n = 11
#     else
#       n
#     end
#   end
  
#   points_array

#     loop do
#       if points_array.inject(:+) > 21 && points_array.include?(11) # if total is greater than 21 and the array contains a value of 11
#         indx = points_array.bsearch_index { |x| x == 11} #search for a value of 11, find its index
        
#         if indx != nil
#           points_array[indx] = 1
#         else  # if there is no value of 11, bsearch_index returns a value of nil, so need to break out of loop
#           break
#         end # end change value if statement

#       else # if there is no ace or no need to change it, break out of loop
#         break
#       end # end find 11 and array + total
#     end #end loop
# points_array # return new array with changed values

# Given: array with point values, some "ace" and some not
# Change value of ace to 11
# New method: add values together, if sum greater than 21 and contains 11, 

# end

# array_one = ["ace", 4, "ace", 2]
# array_two = [10, 9, 8]

# def alter_ace!(array)
#   array.map! do |card|
#     if card == "ace"
#       card = 11
#     else
#       card
#     end
#   end
#   array
# end

# def determine_ace(array)
  
#   array = alter_ace!(array)

#   array.map.with_index do |n, i|
#     if array.inject(:+) > 21 && array.include?(11)
#       array[i] = 1 if n == 11
#     else
#       n
#     end
#   end
  
#   array
# end

# def player_turn
#   card_one = 10
#   card_two = 6
#   puts "You have #{card_one} and #{card_two}."
#   player_hand = [card_one, card_two]
  
#   player_total = player_hand.inject(:+)
  
#   loop do
#     puts "Hit or stay? Type H for hit and S for stay."
#     player_answer = gets.chomp.upcase
#     break if player_answer == "S"
    
#     if player_answer == "H"
#       new_card = "ace"
#       player_hand << new_card
#       player_hand = determine_ace(player_hand)
#       player_total = player_hand.inject(:+)
#       puts "New card: #{new_card}. Player total: #{player_total}"
      
#       break if player_total > 21
#     else
#       puts "Sorry, not a valid answer."
#     end

#   end
#   player_total # returns number
# end


# p player_turn

# DECK = {:hearts => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :diamonds => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :clubs => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :spades => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10]}
# # PLAYER_TOTAL = 0
# # DEALER_TOTAL = 0

CARDS = ["ace", 2, 3, 4]
SHUFFLED_DECK = []

def shuffle_deck
  4.times do
    SHUFFLED_DECK << CARDS.shuffle
  end
  SHUFFLED_DECK.flatten
end

p shuffle_deck


def deal_card
  SHUFFLED_DECK.slice!(0)
end

p deal_card
p deal_card
p deal_card

p SHUFFLED_DECK

# player_total = 22
# dealer_total = 22

# def busted?(points)
#   if points > 21
#     puts "Busted!"
#   else
#     points
#   end
# end

# def determine_winner(player, dealer)

#   player = busted?(player)
#   dealer = busted?(dealer)

#   if player.to_i > dealer.to_i
#     puts "You win!"
#   elsif player.to_i < dealer.to_i
#     puts "Dealer wins!"
#   elsif player == dealer
#     puts "It's a tie!"
#   end
# end

# determine_winner(player_total, dealer_total)

# working hash set

# DECK = {:hearts => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :diamonds => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :clubs => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10],
#         :spades => ["ace", 2, 3, 4, 5, 6, 7, 8, 9, 10]}
# # PLAYER_TOTAL = 0
# # DEALER_TOTAL = 0

# def deal_card
#   random_card = {}
#   random_suit = DECK.to_a.sample(1).to_h
#   # array = random_suit.values.flatten
#   random_value = random_suit.values.flatten.sample
  
#   random_card[random_suit] = random_value
#   # random_suit.key(array)
# end
