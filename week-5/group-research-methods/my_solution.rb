# Research Methods

# I spent [2] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_array = source.map{|i| i.to_s}.grep(/#{thing_to_find}/)
  return new_array
end

def my_hash_finding_method(source, thing_to_find)
  new_array = source.select{|key, value| value == thing_to_find}
  actual = new_array.keys
  return actual
end

# Identify and describe the Ruby method(s) you implemented.
# ".map" to cycle through the array. I then used ".to_s" to turn every element into a string so that searches for numbers would also yield the correct return.
# ".grep" to return an array that matches the argument fed into it.
# ".select" to cycle through the hash and return the key/value pairs matching the argument.
# ".keys" used on the array received from ".select" to return only the keys of the key/value pairs.

# Person 2
def my_array_modification_method!(source, thing_to_modify)

end

def my_hash_modification_method!(source, thing_to_modify)
  
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  
end

def my_hash_sorting_method(source)
  
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  
end

def my_hash_deletion_method!(source, thing_to_delete)
  
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  
end

def my_hash_splitting_method(source, age)
  
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#