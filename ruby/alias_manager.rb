#Solo challenge 5.5 

#Pseudocode 
#Create a method that take the spy's real name (string) and returns the fake name.
#Swapping the first and last name
#Changing all vowels to next vowels and all consonants to their next letter.

#release 0
def alias_name(name)
	vowels = "aeiou"
	fake_name = []
	new_name = name.split(' ')
	swap_name = new_name[1] + " " + new_name[0]
	#swapped the first name and the lst name 
	swap_name.each_char do |c|
		if vowels.index(c) != nil && c == vowels[-1]
			c = vowels[0]
		elsif vowels.index(c) != nil  
			c = vowels[vowels.index(c) + 1]
		elsif c == " "
			c = " "
		else 
			c = c.next
		end
		fake_name << c
	end
	#converted all vowels to next vowels and consonants to next letter. 
	return fake_name.join('')
end
puts "The real name is Felicia Torres"
puts alias_name("Felicia Torres")