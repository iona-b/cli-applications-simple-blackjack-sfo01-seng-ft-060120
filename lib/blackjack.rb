require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num_1 = deal_card
  num_2 = deal_card
  card_total = num_1 + num_2
  display_card_total(card_total)
  return card_total
end

def hit?(display_card_total)
  
  prompt_user
  user_input = get_user_input
  card_total = display_card_total
  
  if user_input == "h"
    new_card = deal_card
    return card_total + new_card
  elsif user_input == "s"
    return card_total
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game
end
    
