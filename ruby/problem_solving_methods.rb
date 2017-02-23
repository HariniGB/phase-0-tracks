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
array = [5, 3, 8, 10, 7]
#p search_array(array, 7)
#p search_array(array, 23)

#Calculate Fibonacci Numbers 

#Pseudocode 
#Create a method fib(n) that take an integer as an argument and return an array of fibonacci sequence.
#Get the fibonacci sequence of  the integer "n"
#If n is 0 return  0 and if n is 1 return 1.
#For n > 1 , add fib(n - 1) + fib(n - 2).
#Example : fib (6)  
#  0   +  1   = 1
#  1   +  1   = 2
#  1   +  2   = 3
#  2   +  3   = 5
#                                              fib_array << c
#method:                                            [0,1]
# a = 0 ,b = 1 ,c = (0 + 1) a + b                    [1]
# a = b (1); b = c (1) ; c = 2                       [2]
#a = b (1);  b = c(2) ; c = 3                        [3]
# a = (2);  b=(3) ; c = 5  (a+b)                     [5]
def fib(n)
	fib_array = [0]
	a = 0
	b = 1
	if n >= 1
		fib_array << 1
	end 
	while fib_array.length < n
		if  n > 1
	      c = a + b  
		  fib_array << c  
		  a = b   
		  b = c  
		end
	end 
	return fib_array  
end
#p fib(100)
#p fib(6)
#p fib(0)

#Sort an Array

#Pseudocode 
#Create a method (bubble_sort) with an argument as an array and returns the sorted array
#swap if the current element is less than the previous element else continue to the next.
#until there is no swap which means all elements are in increasing order, exit.

def bubble_sort(array)
	n = array.length + 1
	loop do 
		swapping = false 
		(n-1).times do |i|
			if i > 0 && array[i] < array[i - 1]
				array[i - 1], array[i] = array[i], array[i - 1]
				swapping = true
			end
		end 
		break if not swapping
	end
	array 
end 
arr = [7,6,2,3,5,4,1]
#p bubble_sort(arr)













