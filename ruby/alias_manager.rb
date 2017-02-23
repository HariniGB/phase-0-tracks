#Solo challenge 5.5 

#Pseudocode 
#Create a method that take the spy's real name (string) and returns the fake name.
#Swapping the first and last name
#Changing all vowels to next vowel letter and all consonants to their next consonant letter.
#Use methods like next_vowel helps debugging
#Create user interface and get the name else type quit.
#Store the names in a data structure (like array) and display when the user quits.
#Display the names list in a sentence "Vussit Gimodoe is actually Felicia Torres

#release 2
def alias_name()
#user Interface
	puts "Fake name converter!!!"
	puts "----------------------"
	name = ""
	name_list = []
  until name == "quit" do
    puts "Enter the spy's real name: (enter 'quit' to end)"
    name = gets.chomp
    if name == "quit"
    	puts "You have quit successfully!"
		  puts name_list
		  exit
	  else
	    fake_name = []
		  swap_names(name).each_char do |letter|
		   	fake_name << next_vowel(letter)
	    end
	    fake = capital_name(fake_name.join(''))
	    puts "The fake name is: "
	    puts fake
	    name_history = fake + " is actually "+ name
	    name_list << name_history
		end
	end 
end
#swapped the first name and the last name 
def swap_names(name)
	new_name = name.split(" ")
	swap_name = new_name.reverse.join(" ")
end
#converted all vowels to next vowels and consonants to next letter.
def next_vowel(char)
	letter = char.downcase
	vowels = "aeiou"
	consonant = "bcdfghjklmnpqrstvwxyz"
	if vowels.index(letter) != nil && letter == vowels[-1]
		letter = vowels[0]
	elsif vowels.index(letter) != nil  
		letter = vowels[vowels.index(letter)+1]
	elsif letter == " "
		letter = " "
	elsif consonant.index(letter) != nil && letter == consonant[-1]
	  letter = consonant[0]
	elsif consonant.index(letter) != nil
		letter = consonant[consonant.index(letter)+1]
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