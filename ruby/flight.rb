# 6.4 Modules
# Release 2: Mix in a Module 

# Declare the Flight module. 
# The module need to be declared above the class because it is called inside the class.
module Flight
	def take_off(altitude)
	    puts "Taking off and ascending until reaching #{altitude} ..."
    end
end
# NOTE : When we're writing a module as a mixin designed to add instance methods to a class, we don't use the self keyword. We can define our module methods the same way we would write instance methods inside of a class.


# Declare classes for a bird and a plane:
class Bird
	# Add your module to your Bird class.
	include Flight
end

class Plane
    # Add your module to your Plane class.
	include Flight
end

# Driver Code
# Add these instance method calls and run it from the command line.

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

#output:
# ruby (master) :> ruby flight.rb 
# Taking off and ascending until reaching 800 ...
# Taking off and ascending until reaching 30000 ...

# Note: Only when we want to call a class method or a class module with slef keyword we use the syntax "obj = Class_name.method_name(attributes)".