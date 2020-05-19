def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts card_total
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
  sum = num_1 + num_2
  puts display_card_total(sum)
  return display_card_total(sum)
end

def hit?(num)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    deal_card
  end
  if user_input == "s"
    return display_card_total
  unless user_input =="h" || user_input == "s"
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
