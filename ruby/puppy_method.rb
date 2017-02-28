# x = Classname.new 
# x the instance of Classname 
# Requirements for instance method:
# 1. Class 
# 2. Method defined inside the class
# 3. Objet of the class.

# Method instance definiton : An instance method like the one above can be created simply by adding a method inside the class declaration (between the class and end keywords).

# Consider a method "sum(a,b)" defined inside the Classname and it returns the sum = a + b.
# if there is a method sum(a,b)
# x.sum(3,5) which should return 8 
# puts x.sum(3,5) will dispaly on the screen.

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

dog = Puppy.new
dog.fetch("ball")
puts dog.fetch("ball")