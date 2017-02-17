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
end
puts "Encrypt:"
puts "The word is : abc"
encrypt("abc")
puts "The word is : zed "
encrypt("zed")

def decrypt(word) 
	i = 0
	alphabets = "abcdefghijklmnopqrstuvwxyz"
	while i < word.length   
		word[i] = alphabets[alphabets.index(word[i]) - 1]  
		i += 1
	end
	puts word.
end
puts "Decrypt:"
puts "The word is : bcd"
decrypt("bcd")
puts "The word is : afe"
decrypt("afe")
puts "Decrypt and Encrypt:  Nested Method Call"
puts "The word is : swordfish"
puts decrypt(encrypt("swordfish"))

