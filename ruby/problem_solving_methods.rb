#Pairing session 

#Implement a Simple Search:

#Pseudocode 
#Create a method (search_array) that takes two parameters (an array of integers and an integer)
#Iterate through the array. 
#If the given integer is in the array return it's index (without using build-in index()).
#Else return nil.
def search_array(arr, int)
	i = 0
	while i < arr.length
		if arr[i] == int
			return i 
		end
	i += 1
	end
end
def search_array_each(arr, int)
	arr.each_index do |i| 
		if arr[i] == int 
			return i
		end
	end
	return nil
end
#array = [5, 3, 8, 10, 7]
#p search_array_each(array, 7)
#p search_array_each(array, 23)

