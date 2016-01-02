# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# Line 170
# 3. What is the type of error message?
# Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# Unexpected end-of-input
# 5. Where is the error in the code?
# The error is the missing "end" after the while statement in the cartman_hates method.
# 6. Why did the interpreter give you this error?
# Because of the missing "end".

# --- error -------------------------------------------------------

south_park = 100

# 1. What is the line number where the error occurs?
# Line 36
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# It tells me that it's within the <main> object.
# 4. Where is the error in the code?
# The south_park var on line 36 is undefined.
# 5. Why did the interpreter give you this error?
# Because ruby can't have undefined vars, methods, etc.

# --- error -------------------------------------------------------

def cartman()
	#do nothing
end

# 1. What is the line number where the error occurs?
# Line 51
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# It lets me know that there is an undefined method, cartman(), on line 51.
# 4. Where is the error in the code?
# Line 51 andis cartman().
# 5. Why did the interpreter give you this error?
# Because cartman() is an undefined method.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
# Line 68
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter spits exactly the number of arguments entered vs the number of arguments needed. In this case 1 of 0.
# 4. Where is the error in the code?
# I'd say the actual error in this case is on line 72 where the argument 'I hate kyle' is loaded into the cartmans_phrase method.
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because cartmans_phrase requires no arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Suck my bawls Kyle")

# 1. What is the line number where the error occurs?
# Line number 87
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that 0 of 1 arguments is being read.
# 4. Where is the error in the code?
# The error in the code is when the cartman_says method is called, but isn't provided an argument.
# 5. Why did the interpreter give you this error?
# Because the cartman_says method requires one argument "offensive_message"



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle')

# 1. What is the line number where the error occurs?
# Line 108
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# There are only 1 of 2 required arguments.
# 4. Where is the error in the code?
# The error is when the cartman_lie method is called, but only provided one of the two required arguments.
# 5. Why did the interpreter give you this error?
# Because cartmans_lie method requires two arguments.

# --- error -------------------------------------------------------

puts "Respect my authoritay! " * 5

# 1. What is the line number where the error occurs?
# Line 127
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# That a string can't be coerced into a fixnum.
# 4. Where is the error in the code?
# Attempting to multiply 5 by "Respect my authoritay" times.
# 5. Why did the interpreter give you this error?
# Because Ruby doesn't know how to multiply 5 by "Respect my authoritay" times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20


# 1. What is the line number where the error occurs?
# Line 142
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# That something is being divided by zero.
# 4. Where is the error in the code?
# The error is that "amount_of_kfc_left" is being assigned to "20/0", and division by zero isn't allowed.
# 5. Why did the interpreter give you this error?
# Because of zero division.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# Line 158
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# Interpreter says that it can't load such a file.
# 4. Where is the error in the code?
# The error is that either ruby can't load an md file and/or that cartmans_essay.md doesn't exist.
# 5. Why did the interpreter give you this error?
# Because Ruby either can't load or can't find the file being required.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
# Which error was the most difficult to read?
# Probably the initial one for me because I quickly glossed over the missing "end" several times before figuring it out.
#
# How did you figure out what the issue with the error was?
# I would have figured it out myself eventually, but I happened to reading over the slack messages from my cohort mates and read a few lines talking about how silly people felt after figuring it out. That kind of gave away that it was something easily overlooked by newbies like me.
#
# Were you able to determine why each error message happened based on the code? 
# For the most part yes, on the one about requiring an md file I still haven't quite gotten the definitive answer, but am fairly certain one of my two is correct. I'm reading through this now actually.
#
# When you encounter errors in your future code, what process will you follow to help you debug?
# Pretty much what was outlined in this exercise. Read through the error message and evaluate.