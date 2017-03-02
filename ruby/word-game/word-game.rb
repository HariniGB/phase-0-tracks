# PSEUDOCODE 

# Write a class designed for a computer program to run a word-game.
# Assume that the driver code will handle input and output.
# The driver code to bridge the gap between UI and Ruby objects.
# There are two users. First can enter a word and second user attempts to guess the word.
# The number of guesses available is related to the length of the word. If its _ _ _ _ _ : 5 letter word, the maximum valid guesses will be given until all 5 index are filled.
# Repeated guesses do not count. If a user guesses the same letter for the same index again and again, it should not be counted as a guess. 
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose. And a repeated guess message if they guess same option again and again.


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
# Congrats!!! Your guess is correct. Try to find the word.
# The word status is: _ e _ _ _ _ _ _ _ _ _ 
