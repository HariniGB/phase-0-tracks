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
# This is not a nested method, this is a method being called on another method. Both functions are separate of each other which allows them to be used on one another.

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




