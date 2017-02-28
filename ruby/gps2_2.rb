# PSEUDOCODE
# Create a new list and add,remove, update and pritn the list. 
# Using Hash data strucutre to create the list.


# DRIVER CODE

# Method to create a list
def grocery_list(grocery_items)
  # input: string of items separated by spaces (example: "carrots apples cereal pizza") 
  # steps: 
  # Create a new empty data structure (Hash) 
  grocery = {}
  # Convert the string parameter into an array of words.
  item = grocery_items.split(" ")
  # Iterate through the array and get the element.
  item.each do |product|
  # Store the element as a key in the hash.
    grocery[product] = 3
  end 
  # set default quantity an integer with value 3. This is the default value of the keys in the hash.
  # print the list to the console [can you use one of your other methods here?]
  display_list(grocery)
  return grocery
  # output: Hash 
end 

# Method to add an item to a list
def add_item(grocery,item_name,quantity)
  # input: list, item name, and optional quantity
  # steps:
  #insert item_name as a key and quantity as a value to the hash  
  grocery[item_name] = quantity
  display_list(grocery)
  # output: modified hash
end

# Method to remove an item from the list
def delete_item(grocery,item_name)
  # input: list, item name.
  # steps:
  #delete item_name from the hash
  grocery.delete(item_name)
  display_list(grocery)
  # output: modified hash 
end

# Method to update the quantity of an item
def update_quantity(grocery,item_name,new_quantity)
  # input:list, item name, and new_quantity
  # steps:
  #change old value of item_name with the new_quantity
  grocery[item_name] = new_quantity
  display_list(grocery)
  # output: return list, item name with new_quantity 
end

# Method to print a list and make it look pretty
def display_list(grocery)
  # input: Hash 
  # steps:
  puts "The grocery list is: "
  # output: print each element and its quantity in a sentence using .each
  grocery.each do |item,quantity|
    puts "Item name: #{item} quantity is : #{quantity}"
  end
  puts "-" * 50
end

grocery_items = "carrots apples cereal pizza"
grocery = grocery_list(grocery_items)
puts "Add the item Ice-cream to the list"
item_name = "Ice-cream"
add_item(grocery,item_name,3)
puts "Remove the item pizza"
item_name = "pizza"
delete_item(grocery,item_name)
puts "Update the quantity of the item apples"
item_name = "apples"
update_quantity(grocery,item_name,5)












