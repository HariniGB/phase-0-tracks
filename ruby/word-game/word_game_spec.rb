# The user1 will give the word 
# User2 will make the guesses till he find the right word.
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
    let(:wordgame) { WordGuess.new("DevBootcamp") } 

    it 'is initially empty' do
    	expect(@guessed_word).to be_empty
    end

    it "stores the word given on initialization" do
    	expect(wordgame.target_word).to eq "DevBootcamp"
    end

    it "gives the total number of guesses" do
    	expect(wordgame.guess_limit).to eq 11
    end

    it "Convert the word to dashes" do
    	expect(wordgame.dash_word).to eq "-----------"
    end

    it "get the guessed word and stores it" do
    	expect(wordgame.correct_word("a",9)).to eq "Congrats!!! Your guess is correct. You have 10 guesses. Try to find the word."
    end

    it "feedback on the current state of the word" do
    	expect(wordgame.word_status).to eq "--------a--"
    end

    it "after a guess has made, display the hash with the guess data" do
    	expect(@guessed_word).to eq "{9 => 'a'}"
    end

    it "get the guessed word and check for repeat" do
    	expect(wordgame.repeat_word("b",9)).to eq "Don't repeat the same guess. You have 10 guesses. Try different guess."
    end

end