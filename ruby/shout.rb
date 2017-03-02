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


# Declare your module. 
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

