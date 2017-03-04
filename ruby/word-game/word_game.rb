# PSEUDOCODE 

# Write a class designed for a computer program to run a word-game.
# Assume that the driver code will handle input and output.
# The driver code to bridge the gap between UI and Ruby objects.
# There are two users. First can enter a word and second user attempts to guess the word.
# The number of guesses available is related to the length of the word. If its _ _ _ _ _ : 5 letter word, the maximum valid guesses will be given until all 5 index are filled.
# Repeated guesses do not count. If a user guesses the same letter for the same index again and again, it should not be counted as a guess. 
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose. And a repeated guess message if they guess same option again and again.

# Behavior: 
# A method to get the word and calculate its length, the no of guesses etc.
# A method to get the guess("letter",index) and check for repeat method and check correct_guess method
# Create repeat_guess(), correct_guess(), guess_limit() and  remaining_guesses()
# Display the word with correct guess and other indeces as "_".


# SAMPLE:

# Welcome to the WORD Guessing Game!!
# Game rules :
# We need two users. First user must enter the full word. Second user must guess the word with limited try.
# Try not to repeat your guesses eventhough its not counted as a guess.
# See the word_guess_status after every guess, to know your status. 

# USER 1: Enter the word.
# DevBootcamp 
# USER 2: Try your guess. You have 11  guesses.
# The word is _ _ _ _ _ _ _ _ _ _ _ : 11 letters.
# Enter the letter postion (1 to 11) and guess the aplhabet.
# Enter the position: 
# 2
# Guess the aplhabet:
# a
# Sorry! That's a wrong guess. You have 11 guesses. Try again! 
# # The word status is: _ _ _ _ _ _ _ _ _ _ _ 
# Enter the letter postion (1 to 11) and guess the aplhabet.
# Enter the position: 
# 2
# Guess the aplhabet:
# a
# Don't repeat the same guess. You have 11 guesses. Try different guess.
# # The word status is: _ _ _ _ _ _ _ _ _ _ _ . 
# Enter the letter postion (1 to 11) and guess the aplhabet.
# Enter the position: 
# 2
# Guess the aplhabet:
# e
# Congrats!!! Your guess is correct. You have 10 guesses. Try to find the word.
# The word status is: _ e _ _ _ _ _ _ _ _ _ 


# Release 2: Test and Build Your Game
# Program file : word_game.rb
# Test file : word_game_spec.rb

# Create a WordGuess class with the behavior methods using instance variables.
class WordGuess 
     
    attr_reader :hidden_word, :word, :guessed_words, :game_end, :index, :guesses
	attr_writer :guesses, :hidden_word, :guessed_words, :index


    # Initialize method with word parameter converted into instance variable.
	def initialize(word)
		@word = word
		@guesses = word.length
		# Initialize a instance variable with empty hash.
		@guessed_words = {}
		@game_end = false
		@index = 0
	end

	def original_word
		word
	end

	def guess_limit
		guesses 
	end

	# Method to print the word as dash to guess the letters.
	def dash_word
		@hidden_word = original_word.tr(original_word,"-")
		hidden_word
	end

	# A method to push each guesses inside the hash.
	def guesses_history(alphabet,position)
		guessed_words[position] = alphabet
		guessed_words
	end

    # A method to decrement the guess count for every correct guess.
	def guesses_left
		@guesses -= 1
		guesses 
	end

	# Method to get the guessed word from the user. 
	def guessed_word(alphabet,position)
		index = position-1
		if original_word[index] == alphabet.upcase
			dash_word[index] = alphabet.upcase
			guesses_history(alphabet,position)
			guesses_left
			hidden_word
		elsif original_word[index] == alphabet.downcase
			dash_word[index] = alphabet.downcase
			guesses_history(alphabet,position)
			guesses_left
			hidden_word
		elsif guessed_words.keys.index(position) != nil && guessed_words[position] == alphabet
			puts "Repeated guess"
		else
			guesses_history(alphabet,position)
			hidden_word
		end
		hidden_word
	end

	# A method to end the game if the user has guessed all the letters.
	def game_end?
		if guess_limit == 0 
			@game_end  = true 	
		elsif hidden_word == word
			@game_end  = true	
		else
			game_end 
		end		
	end
end






















