#Release 0:
def names 
	name2 = "Harini"
	puts "Pairing session 5.3 Iterations"
	yield("Natalie",name2)
	puts "Great! Learned .each , .times and .map methods"
end 
#names {|x, name2| puts "#{x} and #{name2}" }

#Release 1:
#HASH: 
fruits = { "Apricots" => "Vitamin A",
"Apple" => "Vitamin B1",
"Banana" => "Vitamin C",
"Blackberries" => "Vitamin B2",
"Kiwi" => "Vitamin B6"
}
# .each method in the HASH
#fruits.each {|fruit, vitamin| puts "In this #{fruit} we have #{vitamin}"}
# .map method in the HASH
#puts fruits 
#puts "This is using .map"
new_variable = fruits.map do|fruit, vitamin|
	#puts "In this #{fruit} we have #{vitamin}"
end
#puts new_variable
#puts fruits 

colors = ["red","blue","green","yellow","white","black"]
new_colors =[]
colors.each do |color| 
	new_colors << color.upcase 
end 
#p colors
#p new_colors
colors.map do |color| 
	color = color.capitalize
#	puts color
end
#puts "The original colors array is #{colors}" 
colors.map! {|color| color.upcase}
#puts  "The modifies colors array is #{colors}"


#Release 2: 
num_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]
num_hash ={ "one" => 1,
        "two" => 2, 
		"three" => 3,
		"four" => 4,
		"five" => 5,
		"six" => 6,
		"seven" => 7,
		"eight" => 8,
		"nine" => 9,
		"ten" => 10,
		"eleven" => 11,
		"tweleve" => 12,
		"thirteen" => 13,
		"fourteen" => 14,
		"fifteen" => 15,
		"sixteen" => 16,
		"seventeen" => 17,
		"eighteen" => 18,
		"nineteen" => 19,
		"twenty" => 20,
		"twentyone" => 21,
		"twentytwo" => 22,
		"twentythree" => 23,
		"twentyfour" => 24,
		"twentyfive" => 25 }
#A method that iterates through the items, deleting any that meet a certain
#condition (for example, deleting any numbers that are less than 5).

#Using Array 
def less_five_array(numbers)
	puts "The original array is #{numbers}"
	numbers.delete_if{|num| num < 5}
	#numbers.drop_while {|num| num < 10}
	puts "The permanently modified array is #{numbers}"
end 
less_five_array(num_array)
#Using Hash
def less_five_hash(numbers)
	puts "The original hash is #{numbers}"
	numbers.delete_if{|key,num| num < 5}
	puts "The permanently modified hash is #{numbers}"
end
less_five_hash(num_hash)

#A method that filters a data structure for only items that do satisfy a
#certain condition (for example, keeping any numbers that are less than 5).

#Using Array
def mul_five_array(numbers)
	puts "The original array is #{numbers}"
	numbers.keep_if{|num| num % 5 != 0}
	puts "The permanently modified array is #{numbers}"
	#There are few more methods that I tried with this array, are below:
	#numbers.drop_while {|num| num < 10}
	#numbers.insert(1,8)
	#numbers.insert(-3,11,12)
end 

mul_five_array(num_array)
#Using Hash
def more_four_hash(numbers)
	puts "The original hash is #{numbers}"
	numbers.keep_if{|str,num| str.length > 5} 
	puts "The permanently modified hash is #{numbers}"
end
more_four_hash(num_hash)

#A different method that filters a data structure for only items satisfying a
#certain condition -- Ruby offers several options!

#Using Array
def even_num_array(numbers)
    puts "The original array is #{numbers}"
	numbers = numbers.select {|n| n.even? } 
	puts "The modified array is #{numbers}"
end
even_num_array(num_array)
#Using Hash
def start_t_hash(numbers)
    puts "The original array is #{numbers}"
	numbers = numbers.select {|k,n| k[0] == "t"} 
	puts "The modified array is #{numbers}"
end
start_t_hash(num_hash)

#A method that will remove items from a data structure until the condition in
#the block evaluates to false, then stops (you may not find a perfectly
#working option for the hash, and that's okay).

#Using Array
def drop_while_array(numbers) 
	puts "The original array is #{numbers}"
    numbers = numbers.drop_while {|num|  num < 16} 
	puts "The modified array is #{numbers}"
end 
drop_while_array(num_array)
#Using Hash
def drop_while_hash(numbers) 
	puts "The original array is #{numbers}"
    numbers.drop_while {|str,num|  str[-1] == "n"} 
    # This doesn't work because Hash class has no drop_while method 
	puts "The modified array is #{numbers}"
end 
drop_while_hash(num_hash)