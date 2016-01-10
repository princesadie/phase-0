  # DEFINE 'create_list', which takes 1 argument, list_items, string
  #   CREATE empty hash, 'list'
  #   CREATE an array from input by splitting at spaces, 'items'-
  #   ITERATE over 'items'
  #     FOR each 'item' in 'items'
  #       SET key in 'list' to 'item' with "default/initial" value of 1
  #   CALL print_list method with 'list' to output 'list'
  #     RETURN 'list'

  

# DEFINE 'add_item', which takes 3 arguments, item_name (string), quantity (optional, integer), and list (hash)
  # SET 'list' at key 'item_name' to the value 'quantity'
# output: CALL print_list method

# DEFINE 'remove_item', which takes 2 argument, item_name, and list (hash)  
#   ITERATE over 'list' 
#     FOR each item, quantity in list
#        COMPARE 'item_name' to item for a match
#          IF match, delete item
#  
# output: CALL print_list method

# DEFINE 'update_item', which takes 3 arguments, item_name (string), new_quantity (integer), and list (hash)
#  ITERATE over 'list'
#    FOR each item, quantity in list
#      COMPARE 'item_name' to item for a match
#        IF match, modify quanity to new_quantity
#
# output: CALL print_list method

# DEFINE 'print_list', which takes 1 argument, list (hash)
#  ITERATE over 'list'
#    FOR each item, quantity in list
#      PRINT capitalized item_name and quantity
#  RETURN 'list'


# -- LIST --                                                                 
# MILK - 1                                                                   
# BUTTER - 1                                                                 
# EGGS - 1                                                                   
# CARROTS - 10  



#######CODE

def create_list(list_items)
  list = Hash.new
  items = list_items.split(" ")
  items.each do |item| 
    list[item] = 1
  end
  print_list(list)
end

def add_item(item_name, quantity, list)
  list[item_name] = quantity 
  print_list(list)
end

def remove_item(item_name, list)
  list.delete(item_name)
  print_list(list)
end

def update_item(item_name, new_quantity, list)
  list.each do |item, quantity| 
    list[item_name] = new_quantity
  end
  print_list(list)
end

def print_list(list)
  puts "---- LIST ----"
  list.each do |item_name, quantity| 
    puts "#{item_name.upcase} - #{quantity}"
  end
end

# DRIVER/TEST code

my_list = create_list("carrots apples cereal pizza")

new_list = create_list("lemonades tomatoes onions ice_cream")

update_item("lemonades", 2, new_list)
update_item("tomatoes", 3, new_list)
update_item("onions", 1, new_list)
update_item("ice_cream", 4, new_list)

remove_item("lemonades", new_list)
puts " "
update_item("ice_cream", 1, new_list)


#########REFLECTION
=begin
Q: What did you learn about pseudocode from working on this challenge?
A: I learned a TON about pseudocoding in this challenge and just how helpful it is.
Our guide was superb. I didn't realize just how not good my pseudocode was till
she showed us what real pseucode looks and is written like. I'm super happy about
this session!

Q: What are the tradeoffs of using Arrays and Hashes for this challenge?
A: I feel that using arrays solely would've been much more cumbersome than using Hashes.
Using key/value pairs for items and quantities is just much more intuitive. Definitely
easier to follow.

Q: What does a method return?
A: A method returns the value of the last statement. I learned this during this session.
I feel like I should've known this much earlier, but somehow glossed over it. It makes
absolute sense.

Q: What kind of things can you pass into methods as arguments?
A: String, integer, array, and hash as far as I know at this point.

Q: How can you pass information between methods?
A: By passing it as an argument between methods.

Q: What concepts were solidified in this challenge, and what concepts are still confusing?
A: Pseudocoding, passing arguments to other methods, and method returns are much more clear to me
after this GPS. Although I say they're much clearer, I believe I still have a lot more to read and
study before I feel super confident talking about these topics. I know how to use them and what they do,
but I'm not sure I 100% comprehend what's going on in the background (if that makes sense).

=end