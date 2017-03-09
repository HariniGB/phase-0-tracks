# PSEUDOCODE 

# Write a class designed for a computer program to run a word-game.
# Assume that the driver code will handle input and output.
# The driver code to bridge the gap between UI and Ruby objects.
# There are two users. First can enter a word and second user attempts to guess the word.
# The number of guesses available is related to the length of the word. If its _ _ _ _ _ : 5 letter word, the maximum valid guesses will be given until all 5 index are filled.
# Repeated guesses do not count. If a user guesses the same letter for the same index again and again, it should not be counted as a guess. 
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose. And a repeated guess message if they guess same option again and again.
# Use comment lines for each method.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD:ruby/word-game/word-game.rb
=======
=======

>>>>>>> 2efd7439a483de3919175d27d58ba42d981a6a87
=======

>>>>>>> 2efd7439a483de3919175d27d58ba42d981a6a87
# Behavior: 
# A method to get the word and calculate its length, 
# A method to get no of guesses etc. Decrement the guesses limit for each guess. 
# A method to get the guess("letter",index) and check for repeated guess and check for correct guess using conditions.
# Create a hash and store the guesses. Compare the current guess and the hash for already existing repeate guess.
# Display the word status with correct guesses and other indeces as "_". 
# Diplay a congrats message or a taunting message base on the guess. 

# SAMPLE:

# Welcome to the WORD Guessing Game!!
# Game rules :
# We need two users. First user must enter the full word. Second user must guess the word with limited try.
# Try not to repeat your guesses eventhough its not counted as a guess.
# See the word_guess_status after every guess, to know your status. 

# USER 1: Enter the word.
# DevBootcamp 
# USER 2: Try your guess. You have 11  guesses.
# The word is _ _ _ _ _ _ _ _ _ _ _ 
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
     
    #The two kinds of accessors are writers and readers. Used to write and read these attributes inside the entire class.
    attr_reader :hidden_word, :word, :guessed_words, :game_end, :index, :guesses
	attr_writer :guesses, :hidden_word, :guessed_words, :index

    # Initialize method with word parameter converted into instance variable.
	def initialize(word)
		@word = word
		@guesses = word.length
		# Initialize a instance variable with empty hash.
		@guessed_words = {}
		# Initialize the game_end to boolean false 
		@game_end = false
		# Index is used to replace the dashes with the correct guess.
		@index = 0
		# Initialize the hidden word with dashes instead of alphabets.
		@hidden_word = word.tr(word,"-")
	end

	#A method to return the word.
	def original_word
		word
	end

    # A method to return the initial number of guesses
	def guess_limit
		guesses 
	end

	# Method to print the word as dash to guess the letters.
	def hide_word	
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

		# Check for repeating guess by comparing already existing guesses from the hash.
		if guessed_words.keys.index(position) != nil && guessed_words[position].upcase == alphabet.upcase
			puts "Don't repeat the same guess"
			puts "You have #{guesses} guesses left."

		# If the guess is same as that of the original word's letter, its a correct guess
		elsif original_word[index] == alphabet.upcase
			hidden_word[index] = alphabet.upcase
			guesses_history(alphabet,position)
			puts "Congrats!!! Your guess is correct."
			puts "You have #{guesses_left} guesses left."
		# Additional condition for downcase correct guesses.
		elsif original_word[index] == alphabet.downcase
			hidden_word[index] = alphabet.downcase
			guesses_history(alphabet,position)
			puts "Congrats!!! Your guess is correct."
			puts "You have #{guesses_left} guesses left."

		# Other than repeat and correct guess, all other guesses are worng and just add the guesses to the hash to show repeat case in future.
		else
			puts "Sorry! That's a wrong guess."
			puts "You have #{guesses_left} guesses left."
			guesses_history(alphabet,position)
		end
		puts "The status of the word is: #{hidden_word}" 
	end

	# A method to end the game if the user has guessed all the letters and if the user has no more guesses.
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

## USER INTERFACE
# Guess the WORD
puts "Welcome to the 'GUESS the WORD game!!!'"
puts "-" * 38
puts "Game procedure:"
puts "There must be two players.\nOne player can enter a word to be guessed and the another player attempts to guess the word.."
puts "***** RULES *****"
puts "1. Guesses are limited, and the number of guesses available is related to the length of the word."
puts "2. Repeated guesses do not count."
puts "3. You will receive continual feedback on the current state of the word."
puts "LET'S PLAY ....... GUESS the WORD!"
puts "-" * 34
puts "Player 1: Please enter a word"

# Get the word from the user and call the initialize method of WordGuess class with word as the attribute.
word = gets.chomp
wordgame = WordGuess.new(word)
puts "Player 2: You have #{wordgame.guesses} guesses"
puts "The word is: #{wordgame.hidden_word}"

# Until the guesses are over, run this loop. The guesses will be decrementing from word.length till 0.
until wordgame.guesses <= 0
	#Initialize the local variables inside the loop to valid the until condition.
	position = 0
    alphabet = ""
	# Allow only valid valid position number. 
	until position >= 1 && position <=  word.length
		puts "Enter the letter's position (1 to #{word.length}):"
		position = gets.chomp.to_i
		puts "Invalid position." if (position < 1 || position > word.length)
	end
	# Check whether the guess is an alphabet and not any other input.
	until alphabet.match(/^[[:alpha:]]$/)
		puts "Enter your guess (alphabets):"
		alphabet = gets.chomp
		puts "Invalid alphabet." if !alphabet.match(/^[[:alpha:]]$/)
	end
	# Call the guessed_word instnace method of WordGuess class with two attributes: alphabet and position.
	wordgame.guessed_word(alphabet,position)
end
puts "-" * 50 
# If the user has not find the word, dispaly a send off message. Else a congrats meesage.
if  wordgame.game_end? == true
	puts "Thanks for participation."
	puts "Better luck next time."
elsif wordgame.game_end? == true && wordgame.hidden_word == word
	puts "CONGRADULATIONS YOU WIN!!!!!!"
end
