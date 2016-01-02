# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  total = 1
  until number == 0
  	total *= number
  	number -= 1
  end
  return total
end