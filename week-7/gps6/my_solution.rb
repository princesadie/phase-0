# Virus Predictor

# I worked on this challenge [with: Cody Kendall].
# We spent [1.1] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  
=begin
Creates the following instance vars '@state', '@population', and '@population_density'.
=end
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

=begin
Calls two methods, 'predicted_deaths' and 'speed_of_spread'.
=end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  def test
    puts ((@population_density / 50)).floor
  end
=begin
Sets all methods below 'private' as not readable to other Classes. Private methods cannot be called outside of the Class, only methods from within the Class may call private methods.
=end
  
  private

=begin
Takes three arguments 'population_density', 'population', and 'state'. Returns number_of_deaths based on 'population_density' and 'population'.
=end
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    
#     array = [200, 150, 100, 50, 1]
#     # array_of_decimals = [.4, .3, .2, .1, .05]
    
#       index = 0
      
#       while index < array.length
#         if @population_density >= array[index]
#           @number_of_deaths = (@population * (@population_density / 50)).floor
#         end
#         index += 1
#       end
      
    
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
  
=begin
Takes two two arguments 'population_density' and 'state'. Calculates 'speed' based on 'population_density'.
=end
  
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

def states
  STATE_DATA.each do |state, value|
    state = VirusPredictor.new(state, STATE_DATA[state]   [:population_density], STATE_DATA[state][:population])
    state.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
states

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.test
# #
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.test
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects
#

#=======================================================================
# Reflection Section
=begin

Q: What are the differences between the two different hash syntaxes shown in the state_data file?
A: The '=>' is used in older versions of Ruby (1.8 to be exact), while ':' came into use on version 1.9 and beyond.
From what we talked about, they're pretty interchangeable as of right now.

Q: What does require_relative do? How is it different from require?
A: require_relative looks within the current directory for its file, unlike require which looks within the current 
library location or path. require needs a direct path.

Q: What are some ways to iterate through a hash?
A: '.each', '.map', and '.keys' are a few.

Q: When refactoring virus_effects, what stood out to you about the variables, if anything?
A: It just reiterated the different variables are and how they're accessed. I needed more practice with this,
so this session was super helpful in that regard.

Q: What concept did you most solidify in this challenge?
A: Variables, variables, variables... And accessing 'hashy hashes'.

  
=end