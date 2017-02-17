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
