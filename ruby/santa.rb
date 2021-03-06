# 6.3 Attributes 

# Release 0
# start by defining a Santa class
class Santa 
	# Your class should have three instance methods:
	# An initialize method that prints "Initializing Santa instance ..."
	# Release 3
	# Refactor your code with attr_reader and attr_accessor. Verify that your driver code still works.
	# There are 3 different getter and setter methods for instance variables.
	# 
	attr_reader :age, :ethinicity
	attr_accessor :name, :gender

	# Release 1:
	# Update your Santa class with the following attributes:
	def initialize(gender, ethinicity, sing_a_song, gifts_count)
		@name = "Santa claus"
		@gender = gender
		@ethinicity = ethinicity
		@song = sing_a_song
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		# Set your new Santa's age to a random number between 0 and 140.
		@age = rand(140-0).to_i
		@gifts = gifts_count.to_i
	end

	#A santa_details method to dipaly the details of the santa
	def santa_reindeer
		# Display the list of reindeer he has.
		puts "#{@name}'s reindeer list is #{@reindeer_ranking}"
	end

	# A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
	def give_gifts
		n = 0
		#Print the number of gifts the santa has if the @gifts is greater than 0.
		puts "The #{@name} has #{@gifts} gifts." if @gifts > 0
		#Distribute all the gifts that the santa hs with him. Repaeat the loop until all gifts are given.
		while  n < @gifts
			puts "Ho, ho, ho! Haaaappy holidays!"
			puts "Take your gift my child !"
			n += 1 
		end
		puts "Bye! See you next year"
	end

	# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
	def eat_cookies(cookie)
		puts "#{@name} says 'That was a good #{cookie}!' "
	end

	# A santa_singing method that will check the song title and display the song.
	def santa_singing
		#Print the song if the @song is "Jingle bells or "Christmas bells" else print the christmas wishes." 
		if @song == "Jingle bell"
			puts "#{@name}  singing........."
			puts "Jingle bells, jingle bells\nJingle all the way\nOh, what fun it is to ride\nIn a one horse open sleigh"
		elsif @song == "Christmas bells"
			puts "#{@name}  singing........."
			puts "I heard the bells on Christmas Day\nTheir old, familiar carolsplay,\nAnd wild and sweet."
		else 
			puts "Wish you a very Happy Christmas!"
		end
	end

	# Add two attribute-changing methods 
	# A celebrate_birthday method should increase the age of Santa by one year.
	def celebrate_birthday
		@age = @age + 1
	end
	# A get_mad_at method can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
	def get_mad_at(reindeer_name)
		if @reindeer_ranking.index(reindeer_name) == nil 
			puts "There is no such reindeer in the list."
		else
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking[-1] = reindeer_name
		end
		puts "#{@name}'s reindeer list: #{@reindeer_ranking}"
	end
end

#Driver code

# Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.
# santas = [] - No need to store your Santas in a data structure. Release 4

# Release 4
# Use the array of example genders, songs_list and an array of example ethnicities
gender = ["agender","female","bigender","male","female","gender fluid","N/A"]
ethinicity = ["black","Latino","white","Japanese","prefer not to say","Mystical Creature (unicorn)","N/A"]
songs_list = ["Jingle bell", "Christmas bells","Just wish"]

# Create your Santas with a randomly selected gender and a randomly selected ethnicity. 
santa = Santa.new(gender.sample, ethinicity.sample, songs_list.sample, rand(10-2)) 
puts "-" * 70
# program should print out the attributes of each Santa using the instance methods that give you access to that data.
puts "#{santa.name} is #{santa.age} years old and whose ethinicity is #{santa.ethinicity}.\n#{santa.name}'s gender is #{santa.gender}."
santa.celebrate_birthday
puts "The updated age is #{santa.age} years"
santa.eat_cookies("snickerdoodle")
santa.santa_reindeer
puts "Santa moved the Dasher reindeer to the last in the list"
santa.get_mad_at("Dasher")
santa.santa_singing
santa.give_gifts
puts "-" * 70

