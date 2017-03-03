class TodoList

	# Failure/Error: let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }
        # ArgumentError:
        # wrong number of arguments (1 for 0)
	
	# Need to define initialize method with one array parameter and declare the parameter as an instance variable.
	def initialize(items)
		@items = items
	end

	# NoMethodError: undefined method `get_items' for #<TodoList:0x007f9dcd079230>
	# Need to define get_items method which just returns the list.
	def get_items
		@items 
	end

	# NoMethodError: undefined method `add_item' for #<TodoList:0x007ff6a1869d50>
	# Need to define add_item method that takes an item as input parameter and push that item to the array.
	def add_item(item)
		@items << item
	end

	# NoMethodError: undefined method `delete_item' for #<TodoList:0x007fc32411b018>
	# Need to define a delete_item method that takes an item as input parameter and delete(item) from the array.
	def delete_item(item)
		@items.delete(item)
	end

	# NoMethodError: undefined method `get_item' for #<TodoList:0x007fa39a07d240>
	# Need to define another method with same get_item name with one integer parameter.The method returns the element in that integer index from the array.
        def  get_item(index)
    	       @items[index]
        end
end
