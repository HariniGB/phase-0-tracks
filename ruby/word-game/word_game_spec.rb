# The user1 will give the word 
# User 2 will make the guesses till he find the right word.
# There must be a guess_limit based on the length of the word.
# Use a guessing_letter method to check whether its right or wrong.
# If its right, decrement the count of the guesses. If its wrong add the guess in a list.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. 
# The user should get a congratulatory message if they win, and a taunting message if they lose.


# RSpec
# 'describe' block for each group of tests  
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'word_game'

describe WordGuess do 
    let(:game) { WordGuess.new(word) } 

    it "stores the word given on initialization" do
    expect(game.target_word).to eq ["DevBootcamp"]
  end
end