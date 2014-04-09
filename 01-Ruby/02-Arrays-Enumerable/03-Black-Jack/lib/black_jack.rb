def bank_score
  # TODO: Use Random to get a new random score
  bank = 16 + rand(5)
end

def pick_card
  score = 1 + rand(10)
  # TODO: Use Random to get a new random card
end

def game_outcome(bank, score)
  [bank, score]
  # TODO: Take the bank and the score and output an array containing the bank and then the score
end
