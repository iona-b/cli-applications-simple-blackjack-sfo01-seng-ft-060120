require_relative "blackjack.rb"

def runner
  welcome
  initial_round
  prompt_user
  until card_total > 21 do
    hit? 
  end
  end_game
end