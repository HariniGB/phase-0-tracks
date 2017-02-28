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
  # set default quantity an integer with value 3. This is the default value of the keys in the hash.
  grocery[product] = 3
  display_list(grocery)
  end
  # print the list to the console [can you use one of your other methods here?]
  # output: Hash 
  grocery
end 

# Method to add an item to a list
def add_item(grocery,item_name,quantity)
  # input: list, item name, and optional quantity
  # steps: insert item_name as a key and quantity as a value to the hash  
  grocery[item_name] = quantity
  # output:display the latest list
  display_list(grocery)
end

# Method to remove an item from the list
def delete_item(grocery,item_name)
  # input: list, item name.
  # steps: delete item_name from the hash
  grocery.delete(item_name)
  # output: display the latest  list
  display_list(grocery)
end

# Method to update the quantity of an item
def update_quantity(grocery,item_name,new_quantity)
  # input:list, item name, and new_quantity
  # steps: change old value of item_name with the new_quantity
  grocery[item_name] = new_quantity
  # output: display the latest  list
  display_list(grocery)
end

# Method to print a list and make it look pretty
def display_list(grocery)
  # input: Hash 
  # steps: If the list is empty, display the list is empty message.
  if grocery == {}
  	puts "The grocery list is empty" 
  	puts "-" * 50
  else
  #output: print each element and its quantity in a sentence using .each
    puts "The grocery list is: "
    grocery.each do |item,quantity|
       puts "Item name: #{item} and the Quantity is : #{quantity}"
    end
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
puts "Remove the Lemonade from your list"
delete_item(grocery,"Lemonade")
puts "Update the Ice Cream quantity to 1"
update_quantity(grocery,"Ice Cream",1)

#Reflect

# What did you learn about pseudocode from working on this challenge?
# The detail it is the easiest is to do the coding part. If we are clear about the parameters, return values and the basic need of the method, 80% of the program is done. It is important to write pseduocode because it helps the programmer and also guides readers for reference and clear understanding of the programmer's intension to write that particular code line. There are more than one way to execute a code. So it is necessary to mention why we are writing a particular code line/ method etc.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Basically, array is used when there is a need for an ordered list. Like if we need to retrieve every item in the even index. But in this program, its just a simple list that has two variables. Item and Quantity. So hash is the best suitable data structure. We have used the Item as the key and it's respective Quantity as the key's value. In that case they don't interchange with each other. Hash is unordered list. 

# What does a method return?
# In general, there are two types of method return. Implicit (normally the last line in a method which will be returned by default without a need to type 'return' keyword before the code) and Explicit (any line before the last line in a method defined with a keyword 'return'. All other code lines after this explicit return will not be executed if this code is returned). In this program I have used only implicit return for all the methods.Method returns are necessary. It helps to use the method and assign the method call to variables and use them as parameters for another methods.

# What kind of things can you pass into methods as arguments?
#Any datatypes (integers, floats,string,boolean),method calls, a code block etc. We need to define the method with the parameters. Code block can be defined inside a method by using 'yield' keyword.

# How can you pass information between methods?
#Just imagine that method_A is to be passed into the method_B. In that case, we will asign the method_A call to a variable and give that variable as the parameter in the method_B call. For example: I have used the grocery_list() method and pass the grocery hash to all the other methods like add_item(), delete_item() and update_quantity(). Refer the TEST SOLUTIONS.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I was hesitant to use same name for a method and a variable inside that method. Then realised its posible but just to avoid confusion, I din't want same names. Secondly, I was not able to pass the grocery_list() method inside other methods as an argument. Later, with the help of our guide, I was able to create a new variable 'grocery = grocery_list(grocery_items)' and use this variable as an argument inside all other methods. Not confused. But I can learn, encounter issues/confusions and find the solution, only if I try different kinds of programs. 

