#Solo challenge 5.5 

#Pseudocode 
#Create a method that take the spy's real name (string) and returns the fake name.
#Swapping the first and last name
#Changing all vowels to next vowels and all consonants to their next letter.

#release 1
def alias_name()
#user Interface
	puts "Fake name converter!!!"
	puts "----------------------"
	name = ""
    until name == "quit" do
    	puts "Enter the spy's real name: (enter 'quit' to end)"
    	name = gets.chomp
    	if name != "quit"
    		fake_name = []
		    swap_names(name).each_char do |letter|
		    	fake_name << next_vowel(letter)
	      end
	      puts "The fake name is: "
	      puts capital_name(fake_name.join(''))
	    else  
		    puts "You have quit successfully!"
		    exit 
		  end
	  end 
end
#swapped the first name and the last name 
def swap_names(name)
	new_name = name.split(" ")
	swap_name = new_name.reverse.join(" ")
end
#converted all vowels to next vowels and consonants to next letter.
def next_vowel(letter)
	vowels = "aeiou"
	if vowels.index(letter) != nil && letter == vowels[-1]
		letter = vowels[0]
	elsif vowels.index(letter) != nil  
		letter = vowels[vowels.index(letter) + 1]
	elsif letter == " "
		letter = " "
	else 
	  letter = letter.next
	end   
	return letter
end
#Capitalize all the first letters in the name. 
def capital_name(name)
	capital = name.split(" ")
	capital.each do |word|
		word[0] = word[0].capitalize
	end
	name = capital.join(" ")
end
puts alias_name