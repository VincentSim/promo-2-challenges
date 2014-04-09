require_relative 'black_jack'



def play_game

score = 0
bank =  bank_score


  while asking_for_card?(score)
    score += pick_card
    puts state_of_the_game(score, bank)
  end

  puts state_of_the_game(score, bank)
  puts build_message_for(game_outcome(bank, score))
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
end

def state_of_the_game(score, bank)
  "Your score is #{score}, bank is #{bank}!"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)
  if score <= 21
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
   puts "Card ?"
   card = gets.chomp
   (card == "Y" || card == "yes") ? true : false
 else
  false
 end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if outcome[1] > 21
    "You are over 21... you loose."
  elsif outcome[1]  == 21
    "Black Jack!"
  elsif outcome[1]  > outcome[0]
    "You beat the bank! You win."
  elsif outcome[0]  > outcome[1]
    "Bank beats you! You loose."
  else
    "Good Game"
  end
end
