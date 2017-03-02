# 6.3 Modules 
# Release 1
# A standalone module -- a module declaration with some methods declared on the self keyword inside the declaration.

# self keyword:
# The keyword self in Ruby gives you access to the current object – the object that is receiving the current message. In the context of a class, self refers to the current class, which is simply an instance of the class Class. Defining a method on self creates a class method.

# Ruby is very flexible and as such it allows several ways to define a class method. The following is a sample of the most commonly used ways.

# Method 1:(used for each class method inside the class)
# def self.method_name(argumetns)

# Method 2: (used when many class methods are defined insdie one class)
# class << self 
#    def method_name (arguments)
#      ......code ...
#     end
# end

# Method 3: (Can be used as a quick way to include a class method)
# def.Class_name.method_name(arguments)

=begin
# Declare the module. 
module Shout

  # Add instance methods to classes: the methods of standalone modules must be defined on the self keyword.
  def self.yell_angrily(words)
    puts words + "!!!" + " :("
  end

  # Add a yelling_happily method to our module. You can decide what that method should return.
  def self.yelling_happily(words)
    puts "yeh, wow! " + words + "!!!" + " :) "
  end
end

# Driver Code

#Add driver code underneath your module declaration that calls both of your module methods.
obj = Shout.yell_angrily("Crap")
obj = Shout.yelling_happily("Kumbaya")

=end


# Release 3
# Convert a Standalone Module to a Mixin
# Requirement: Write two classes representing anything that might shout, and include the Shout module in those classes.

# Declare the Shout Module that has a method with array as parameter and prints each element with "!!!" on the screen. 
module Shout
	def yell(words)
		words.each do |word|
			puts word.to_s + "!!!"
        end
    end
end

# Declare the Song Module that has a method sing_song with an array as parameter. Print the song.
module Song
	def sing_song(lyrics)
		puts lyrics
    end
end

# Create 5 classes - Marketer, SoccerFans, Boss, Mom, PopSinger. Include the Shout module in all the classes.
class Marketer

	# Include the Shout module in the class.
	include Shout 

	# Create an initialize method that displays "Shop name".
	def initialize(shop_name)
		puts "#{shop_name} www.#{shop_name.downcase}.com"
	end
end

# Class with include module and a class method defined using self keyword.
class SoccerFans

	# Include the Shout module in the class.
	include Shout 

	# Declare  a class method using self keyword that takes a chant as an argument and displays it 3 times.
	def self.arsenal(chant)
		puts chant + "!" + chant + "!" + chant + "!"
	end
end

# Class with include module and more than one class method defined using self keyword.
class Boss

    # Include the Shout module in the class.
	include Shout 

	# Create more than one class method using self keyword and << push.
	class << self

		# Define a method that prints a deadline message with 10 days from today.
		def deadline
			date = (Time.now + (60 * 60 * 24 * 7 * 2)).strftime("%d/%m/%Y %H:%M")
			puts "Listen! The deadline is on #{date.to_s}"
		end
		# Define a method that takes a hash and display the key and value in a sentence.
		def plan(tasks)
			tasks.each do |day,task|
			    puts "#{day}, we must complete the #{task}"
			end
			puts "I'm the Boss! No one must do anything without my knowledge!"
		end
	end
end

# Create a class with Shout module ans class method that displays mom's dialogues. 
class Mom

	# Include the Shout module in the class.
	include Shout

	# Declare a class method using self keyword and the class name.
	def Mom.love(words, count)
		while count > 0 
			puts "#{words}"
			count -= 1
		end
	end
end

# Create a class that includes Shout module and Song module.
class PopSinger

	# Include the Shout module and Song module.
	include Shout 
	include Song
end

# Driver code 
# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.

# Marketer class
puts "-" *100
puts "Marketer"
puts "-----------" 

# Initialize method call inside the Marketer class. 
salesman = Marketer.new("PUMA")
salesman.yell(["50% OFFER","SUMMER SALE","Buy 2 Get 1"])



# SoccerFans class
puts "-" * 60
puts "SoccerFans"
puts "----------"

arsenal = SoccerFans.new
soccer_fans_yell = ["One Arsene Wenger","There's only one Arsene Wenger","There's ony one Arsene Wenger..."]

# Assign the array to a variable soccer_fans_yell and use it as an argument. 
arsenal.yell(soccer_fans_yell)

# arsenal() class method call 
arsenal = SoccerFans.arsenal("We love you Arsenal, we do ")

#Boss class
puts "-" * 60
puts "BOSS"
puts "----"
manager = Boss.new
manager.yell(["We are team","All are equal","Everyone should be on time to the office","No conflicts","Only goal is the PROJECT!!!"])

# deadline() class method call  using same object.
manager = Boss.deadline

# Create a hash and pass it as an argument to the Boss class method plan().
schedule = { "Monday" => "Customer requirement document",
	"Tuesday" => "Project design",
	"Wednesday" => "Development",
	"Thursday" => "Core development",
	"Friday" => "Unit Testing",
	"Next week" => "Client-side testing and resolve the issues."
}

# plan() class method call using same object
manager = Boss.plan(schedule)

# Mom class
puts "-" * 60
puts "MOM"
puts "---"
mummy = Mom.new
mummy.yell(["Where are you, my child?","Don't eat junk food","Becareful where ever you go","Come home soon!!"])

# love() class method call using same object
mummy = Mom.love("Mama loves you!", 3)

# PopSinger class
puts "-" * 60
puts "PopSinger"
puts "---------"
singer = PopSinger.new 
lyrics = "It’s Saturday night\nAnd the city never sleeps\nIt’s Saturday night\nBaby why shouldn't we\nI got a clean t-shirt and a shot of cologne\nWe’re way too young to be sitting at home on\nSaturday night\nIt’s Saturday night"

# call two modules of the Popsinger class using same object.
singer.yell(["Come on NewYork!","It's SATURDAY Night","Lets ROCK........"])
singer.sing_song(lyrics)

