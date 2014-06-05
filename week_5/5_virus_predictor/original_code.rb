# U2.W5: Virus Predictor

# I worked on this challenge [By myself].

# EXPLANATION OF require_relative
# require_relative links this ruby file's code to another file, in this case it is state_data.rb.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

#virus_effects method is used to show, depending on the user input in the initialize method, the effects of the virus in a string. This method takes the follow two method's results and combines them in this method. So virutally this is a method, of the methods and combines the data needed together.

  def virus_effects  #HINT: What is the SCOPE of instance variables? The scope of instance variables is that it will constant throughout the numerous methods, but within the class.
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method. Private is actually a method call for the class.This means that private methods can be called only in the context of the current object. Private methods will not show on the browser. An example could be a shopping cart where you get a discount like 10% off. You don't want that to be featured everywhere on the site for everyone, you can make it private so only when only a certain condition is met and the customer is at the shopping cart page, they get the 10% off discount. So in this code, the def predicted deaths and speed_of_spread are private and calculated just internally.

#This method is for predicting deaths. It takes the initialized state's population density and breaks it down into sections of density being over 200, over 150, over 100, over 50. Depending on the density, it will execute the conditions within that section. So for example in the first section, if density is greater than or equal to 200, take the population that was user inputed and multiply it by .4 and then .floor means it will return the largest non-float integer in the solution.
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
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

#This method is to collect information about the speed of the virus spreading. This takes the user inputed data of density and state, and then returns the pre-defined rate of speed for the virus.
  def speed_of_spread(population_density, state) #in months
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

 state = VirusPredictor.new(state, STATE_DATA["state"])




alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects