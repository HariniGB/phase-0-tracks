class TodoList

	# Failure/Error: let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }
    # ArgumentError:
    # wrong number of arguments (1 for 0)
	def initialize(items)
		@items = items
	end

	# NoMethodError: undefined method `get_items' for #<TodoList:0x007f9dcd079230>
	def get_items
		@items 
	end

	#  NoMethodError: undefined method `add_item' for #<TodoList:0x007ff6a1869d50>
	def add_item(item)
		@items << item
	end

	# NoMethodError: undefined method `delete_item' for #<TodoList:0x007fc32411b018>
	def delete_item(item)
		@items.delete(item)
	end

	# NoMethodError: undefined method `get_item' for #<TodoList:0x007fa39a07d240>
    def  get_item(index)
    	@items[index]
    end
end