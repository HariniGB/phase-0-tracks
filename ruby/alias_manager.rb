#Solo challenge 5.5 

#Pseudocode 
#Create a method that take the spy's real name (string) and returns the fake name.
#Swapping the first and last name.
#Iterate through the name and find whether each letter is a vowel or a consonant.
#Change all the vowels to the next vowel letter and all consonants to their next consonant letter.
#Use methods to find a letter is vowel or not, to capitalize the first letter and to convert the letter to its next letter. 
#Create user interface and get the name else type quit.
#Store the names in a data structure (like array) and display when the user quits.
#Display the names list as a hash abd print the keys and it's values in a sentence "Vussit Gimodoe is actually Felicia Torres".

#release 2
#Convert the real name to a fake name.
def realname_to_fakename(real_name)
	fakename_array = []
	#Initailize a empty array to store all the converted letters of the real_name.
	swap_names(real_name).each_char do |char|
		fakename_array << vowel_or_not(char)
	end
	fake_name = capitalize_name(fakename_array.join(''))
end
#Swaps the first name and the last name positions.
def swap_names(realname)
	new_name = realname.split(" ")
	swap_name = new_name.reverse.join(" ")
end
#Checks whether the letter is a vowel or a consonant 
def vowel_or_not(char)
	char = char.downcase
	letters = ""
	if char =~ /[aeiou]/
		letters = "aeiou"
		character = next_letter(char, letters)
	else
		letters = "bcdfghjklmnpqrstvwxyz"
		character = next_letter(char, letters)
	end
	character
end
#Converts all vowels to next vowel letter and converts all consonants to next consonant letter.
def next_letter(char, letters)	
	if char == letters[-1]
		char = letters[0]
	elsif char == " "
		char = " "
	else 
		char = letters[letters.index(char)+1] 
	end
	char
end
#Capitalize all the first letters in the name. 
def capitalize_name(name)
	capital = name.split(" ")
	capital.each do |word|
		word[0] = word[0].capitalize
	end
	name = capital.join(" ")
end
#user Interface
puts "Fake name converter!!!"
puts "----------------------"
real_name = ""
names_list = {}
#Initalize a new hash to store all the real names and fake names.
until real_name == "quit" do
	puts "Enter the spy's real name: (enter 'quit' to end)"
    real_name = gets.chomp
    if real_name == "quit"
	    puts "You have quit successfully!"
	    names_list.each do |key, value|
		    puts value + " is actually " + key
	    end
	    #Display each key and its value from the hash as a sentence.
	    exit
    else
	    fake_name = realname_to_fakename(real_name)
	    #Calls the method realname_to_fakename(name)
	    puts "The fake name is: #{fake_name}"
	    names_list[real_name] = fake_name
	    #Push the real_name as the key and it's value as the fake name.
    end 
end
