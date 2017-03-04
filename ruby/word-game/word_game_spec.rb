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

    it "stores the word given on initialization" do
    	expect(wordgame.original_word).to eq "DevBootcamp"
    end

    it "gives the total number of guesses" do
    	expect(wordgame.guess_limit).to eq 11
    end

    it "when game starts" do
        expect(wordgame.game_end?).to eq false 
    end

    it "Convert the word to dashes" do
    	expect(wordgame.hide_word).to eq "-----------"
    end

    it "check whether the guesses word is a correct guess" do
    	expect(wordgame.guessed_word("a",9))=="The status of the word is: --------a--"
    end

    it "after a correct guess the limit decrements" do
        expect(wordgame.guesses_left).to eq 10
    end

    it "feedback on the current state of the word" do
    	expect(wordgame.guessed_word("e",9))== "The status of the word is: --------a--"
    end

    it "after a guess has made, store the guess in the hash" do
    	expect(wordgame.guesses_history("a",9)).to include({9=>"a"})
    end

    it "get the guessed word and check for correct match" do
        expect(wordgame.guessed_word("a",9))== "Don't repeat the same guess"
    end

    it "is the game over" do
        p wordgame.original_word
        p wordgame.hide_word
        p wordgame.guess_limit
        p wordgame.guessed_word("D",1)
        p wordgame.guesses_history("D",1)
        p wordgame.guess_limit
        p wordgame.guessed_word("e",2)
        p wordgame.guesses_history("e",2)
        p wordgame.guess_limit
        p wordgame.guessed_word("v",3)
        p wordgame.guesses_history("v",3)
        p wordgame.guess_limit
        p wordgame.game_end?
        p wordgame.guessed_word("b",4)
        p wordgame.guessed_word("P",11)
        p wordgame.guessed_word("o",6)
        p wordgame.guess_limit
        p wordgame.game_end?
        p wordgame.guessed_word("t",7)
        p wordgame.guessed_word("o",5)
        p wordgame.guessed_word("o",5)
        p wordgame.guess_limit
        p wordgame.guesses_history("o",5)
        p wordgame.guessed_word("c",8)
        p wordgame.guessed_word("a",9)
        p wordgame.guess_limit
        p wordgame.guessed_word("m",10)
        p wordgame.guessed_word("t",7)
        p wordgame.guess_limit
        p wordgame.guesses_history("o",5)
        p wordgame.game_end?
        expect(wordgame.game_end?).to eq true
     end

end