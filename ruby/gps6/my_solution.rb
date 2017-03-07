# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It brings different programs using 'require'. Especially ruby models from gem.
# require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
# When you use require to load a file, you are usually accessing functionality that has been properly installed, and made accessible, in your system. require does not offer a good solution for loading files within the project’s code. 

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
  # a method with three parameters used to predit the death based on the population density.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor  #(5.5).floor => 6
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # A method to calculate the speed using the population_density. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state 

STATE_DATA.each do |state, population_details| # |key , value| population_details = value of the key "state" = hash[key]
  obj = VirusPredictor.new(state, population_details[:population_density], population_details[:population])
  obj.virus_effects
end

