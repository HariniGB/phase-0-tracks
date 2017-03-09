# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It brings different programs using 'require'. Especially ruby models from gem. 

require_relative 'state_data'

class VirusPredictor
  
  # initialize method with 3 parameters and assign them as instance variables. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # a method that calls two other instnace methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private # all methods that follow will be made private: not accessible for outside objects.
  # Private methods cannot be called with an explicit receiver - the receiver is always self. This means that private methods can be called only in the context of the current object; you cannot invoke another object's private methods.
  

  # Refractor: Refactor the private methods predicted_deaths and speed_of_spread. Avoid DRY.
  # Inorder to make this two methods DRY, we are creating a method to perform the task. A method that calculates number_of_deaths and speed based on the range of the@population_density value.
  def deaths_and_speed
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    #Convert the local variable speed to an instance variable to use in speed_of_spread method.
    @speed = 0.0

    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor 
      @speed += 0.5 
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
      @speed += 1
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
      @speed += 1.5
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
      @speed += 2
    else
      @number_of_deaths = (@population * 0.05).floor
      @speed += 2.5
    end
  end

  # A method with three parameters used to predit the death based on the population density.
  def predicted_deaths
    
    # calls the private method to calculate the number_of_deaths.
    deaths_and_speed
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end
  
  # A method to calculate the speed using the population_density. 
  def speed_of_spread #in months

    # calls the private method to calculate the speed value.
    deaths_and_speed
    puts " and wsill spread across the state in #{@speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state 

STATE_DATA.each do |state, population_details| # |key , value| population_details = value of the key "state" = hash[key]
  obj = VirusPredictor.new(state, population_details[:population_density], population_details[:population])
  obj.virus_effects
end
#=======================================================================
=begin
# Reflection Section

1. What are the differences between the two different hash syntaxes shown in the state_data file?
There are two different hash syntaxes. They are:
a.) Hash with keys as string and values. Strings on the other hand are mutable, they can be changed anytime.
Example: hash = { "name" => "David", "age" => 49 }
b.) Ruby allows a special form of symbol representation in the hash-key position, with the colon after the symbol instead of before it and the hash separator arrow removed. Symbols in Ruby are basically "immutable strings". That means that only one copy of a symbol needs to be created. So the ruby stores the symbol with unique  object-id which is easier to retrieve the values.
Example: hash = { name: David, age: 49 } 

2. What does require_relative do? How is it different from require?
The 'require_relative' uses the directory of where that program itself resides. The 'require_relative' complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement. It is important to note these files do not need to be in the same directory.  require_relative '../../folder1/folder2/data' is also valid

The 'require' uses the current directory that you are running the program fromWhen you use 'require' to load a file, you are usually accessing functionality that has been properly installed, and made accessible, in your system. 'require 'will most likely be used to bring in code from a library someone else wrote. Especially ruby models from gem.

3. What are some ways to iterate through a hash?
There are few inbuild methods for Hash which can be used to iterate. 
a.)Using .each :  
hash.each do |key, array| 
  #iterates 
end
b.)Using .each_key will return an array of keys. Which can be iterated.
hash.each_key do |key|
  #iterates 
end
c.)Using .each_pair which will iterate throug each pair of the hash. 
d.)Using .map which maps the key and its value for each iterations
hash.map do |k,v|
   #maps the key and its value in each iteration.
end

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
Initially I was able to identify that the three variables: state, population and  population_density are instance variables that can be used inside a class without declaring then again and again. Especially when they are declared as getter and setter methods, they can be read and writtern any where inside the class. 
Secondly, when these variables are instance variables, there is no need to declare them as parameter for the instance methods of the same class. So the parameters of predicted_deaths and speed_of_spread methods were removed.

Refactoring is to make the program DRY and so I initially thought to combine the  predicted_deaths method and speed_of_spread method as they had similar if condition. But later realized that by combining we might not be able to get separate datas like speed alone or just the predicted death count. So, I created another method that calculates the required values based on the if condition and this method can be called in the other two methods (predicted_deaths and speed_of_spread). By doing this, we are having two different methods to retrieve two different datas and we are making the program DRY. 

5. What concept did you most solidify in this challenge?
Refactoring was challenging. Immediate solution that rises in our mind is to combine all the similar codes into one block. But we fail to realize it's effects and may find it difficult later on. Especially when a method can't be reused. 

=end
