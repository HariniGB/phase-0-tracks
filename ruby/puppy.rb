#Design a class

# PetsDetails Class
# Instance of PetsDetails (example:  Dog,Cat,Rabbit,Parrot,Cow,Sheep,Lamb etc.)
# SPECIES: Dog 
# CHARACTERISTICS (Hash): 
# Name => "Puppy"
# Age=> 3 
# Hair_color => "Golden-Brown"
# Breed => "Labrador"
# BEHAVIOR (Array): Jump, Hug, Play, Lick, Cry etc..

class Puppy
end

dog = Puppy.new
cat = Puppy.new
rabbit = Puppy.new

# Class in Ruby:

#A class is the blueprint from which individual objects are created. A class have many methods/functions. Therefore, class is a combination of characteristics and functions. 
# Sample: 
# class Sample
#    def function
#       statement 1
#       statement 2
#    end
# end

#A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals.
# Example: class Puppy 

#A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.
# Example: 
# class Puppy
#    @@no_of pets = 0
# end

#Objects are instances of the class. The new method belongs to the class methods.
# Example:
# dog = Puppy.new 
# where 'dog' is an object of the class 'Puppy'

# Example for a simple class with a method and object.

# class Sample
#   def hello
#       puts "Hello Ruby!"
#    end
# end

# Now using above class to create objects
# object = Sample. new
# object.hello

# The result will be:
# Hello Ruby!