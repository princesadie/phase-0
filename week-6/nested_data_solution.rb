# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: 
          {inner: 
              {"almost" => 
                {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add_five(array)
  array.map! do | num |
    if num.is_a? Array
      num.map! do | num | 
        num += 5
      end
    else
      num += 5
    end   
  end
end

p add_five(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]



def name_generator(array)
  array.map! do | name |
    if name.is_a? Array
      name.map! do | name |
        if name.is_a? Array
          name.map! do | name |
            name + "ly"
          end
        else
          name + "ly"
        end
      end
    else
      name + "ly"
    end
  end
end

p name_generator(startup_names)

# We tried refactoring with the #each_with_index method, but couldn't abstract the code to work with n number of levels. Instead, everything we wrote required that we know our position in the array. 

# Is there a method we can use, or a way to refactor this so it can loop through infinite arrays and do the + "ly" logic on all of the items in n arrays? 

#REFLECTION
=begin
Q: What are some general rules you can apply to nested arrays?
A: I would to always be aware of your location in the array. Having this knowledge is crucial to working with nested arrays,
it's so easy to get lost in there for a newbie like me.

Q: What are some ways you can iterate over nested arrays?
A: The first thing that comes to my mind when iterating over nested arrays is to check whether or not an element is an array.
If an element is an array, then expect to iterate over that deeper array, and so on... It's a lot of repeats.

Q: Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
A: I re-used methods I was already familiar with. In this case because the nested arrays were simple enough
  to deal with using "is_a?" and "map!". Researching a better way to do this is on my to-do list.
=end