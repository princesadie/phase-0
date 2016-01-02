# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(x)
	if x >= 90
		return "A"
	elsif x < 90 && x >= 80
		return "B"
	elsif x < 80 && x >= 70
		return "C"
	elsif x < 70 && x >= 60
		return "D"
	elsif x < 60
		return "F"
	end
end