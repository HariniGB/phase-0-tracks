#PSEUDOCODE
#Create a function name and get a string as an argument.
#Create a variable (ex:i) and assign its value to zero.
#Using this variable i, iterate through the string using string[i] indexes.
#To encrypt to the alphanet in the next index, use next method with bang operator.
#To decrypt to the previous alphabet in the aphabets string, find the index value of the current letter and minus 1 from that index.
#Replace the given letter with the letter in its previous index value. 
#Call nested method and check the method's return values. 
#Add a driver code to ask the user for their interest and the word to be encrypted/decrypted. 

#METHOD DECLARATION
def encrypt(word)
	i = 0
	while i < word.length
		if word[i] == "z"
			word[i] = "a"
		else
			word[i] = word[i].next!
		end
			i += 1
	end
	word
	#this method works best by not using puts  and letting 'word' be returned implicitly or by using p.
end
#puts "Encrypt:"
#puts "The word is : abc"
#encrypt("abc")
#puts "The word is : zed "
#encrypt("zed")

def decrypt(word) 
	i = 0
	alphabets = "abcdefghijklmnopqrstuvwxyz"
	while i < word.length   
		word[i] = alphabets[alphabets.index(word[i]) - 1]  
		i += 1
	end
   word
    # this method works best by not using puts and letting 'word' be returned implicitly
end
#puts "Decrypt:"
#puts "The word is : bcd"
#decrypt("bcd")
#puts "The word is : afe"
#decrypt("afe")
#puts "Decrypt and Encrypt:  Nested Method Call"
#puts "The word is : swordfish"
#puts decrypt(encrypt("swordfish"))
# This is a nested method. It is used to call encrypt method as an argument to decrypt method. 
# Both functions are separate of each other which allows them to be used on one another.
#As it is not a nested function definition, where a functio nis defined inside another function. This works well. 

#DRIVER CODE. 
puts 'Would you like to encrypt or decrypt a password?'
answer = gets.chomp
puts 'What is your password?'
password = gets.chomp
if answer == "encrypt"
	puts "The encrypted password is :"
    puts encrypt(password)
elsif answer == "decrypt"
	puts "The decrypted password is :"
    puts decrypt(password)
else
	puts "Entered the wrong option."
end




