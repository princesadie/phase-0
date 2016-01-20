require_relative 'state_data'
require_relative 'my_solution'

def print_all
	STATE_DATA.each do | key, value |
		puts key
		value.each do | key, value |
			x = key
			y = value
		end
		i = VirusPredictor.new(key, x, y)
	end
end