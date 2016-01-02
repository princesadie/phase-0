# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(x)
	if x % 4 == 0
		if x % 100 == 0
			if x % 400 == 0
				return true
			else
				return false
			end
		else
			return true
		end
	else
		return false
	end
end