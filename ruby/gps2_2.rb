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
  if grocery_items == ""
  	puts "The grocery list is empty" 
  	puts "-" * 50
  else
  	item = grocery_items.split(" ")
    # Iterate through the array and get the element.
    item.each do |product|
    # Store the element as a key in the hash.
    # set default quantity an integer with value 3. This is the default value of the keys in the hash.
    grocery[product] = 3
    display_list(grocery)
    end
  end
  # print the list to the console [can you use one of your other methods here?]
  return grocery
  # output: Hash 
end 

# Method to add an item to a list
def add_item(grocery,item_name,quantity)
  # input: list, item name, and optional quantity
  # steps: insert item_name as a key and quantity as a value to the hash  
  grocery[item_name] = quantity
  # output:display the latest list
end

# Method to remove an item from the list
def delete_item(grocery,item_name)
  # input: list, item name.
  # steps: delete item_name from the hash
  grocery.delete(item_name)
  display_list(grocery)
  # output: display the latest  list
end

# Method to update the quantity of an item
def update_quantity(grocery,item_name,new_quantity)
  # input:list, item name, and new_quantity
  # steps: change old value of item_name with the new_quantity
  grocery[item_name] = new_quantity
  display_list(grocery)
  # output: display the updated list
end

# Method to print a list and make it look pretty
def display_list(grocery)
  # input: Hash 
  # steps: output: print each element and its quantity in a sentence using .each
  puts "The grocery list is: "
  grocery.each do |item,quantity|
    puts "Item name: #{item} and the Quantity is : #{quantity}"
  end
  puts "-" * 50
end

# TEST SOLUTION
grocery_items = ""
grocery = grocery_list(grocery_items)
puts "Add the following items to your list:\nLemonade, qty: 2\nTomatoes, qty: 3\nOnions, qty: 1\nIce Cream, qty: 4\n"
add_item(grocery,"Lemonade",2)
add_item(grocery,"Tomatoes",3)
add_item(grocery,"Onions",1)
add_item(grocery,"Ice Cream",4)
display_list(grocery)
puts "Remove the Lemonade from your list"
delete_item(grocery,"Lemonade")
puts "Update the Ice Cream quantity to 1"
update_quantity(grocery,"Ice Cream",1)












