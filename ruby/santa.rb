# 6.3 Attributes 

# Release 0
# start by defining a Santa class
class Santa 
	# Your class should have three instance methods:
	# An initialize method that prints "Initializing Santa instance ..."
	def initialize 
		puts "Initializing Santa instance ..."
	end
	# A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
	def speak
		return "Ho, ho, ho! Haaaappy holidays!"
	end
	# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
	def eat_cookies(cookie)
		return "That was a good #{cookie}!"
	end
end

#Driver code

# Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.
santa_claus = Santa.new
p santa_claus.speak
p santa_claus.eat_cookies("snickerdoodle")
