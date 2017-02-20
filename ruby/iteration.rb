#def names 
#	name2 = "Harini"
#	puts "Pairing session 5.3 Iterations"
#	yield("Natalie",name2)
#	puts "Great! Learned .each , .times and .map methods"
#end 

#names {|x, name2| puts "#{x} and #{name2}" }

fruits = { "Apricots" => "Vitamin A",
"Apple" => "Vitamin B1",
"Banana" => "Vitamin C",
"Blackberries" => "Vitamin B2",
"Kiwi" => "Vitamin B6"
}

#fruits.each {|fruit, vitamin| puts "In this #{fruit} we have #{vitamin}"}

#new_variable = fruits.map do|fruit, vitamin|
#	puts "This is using .map"
#	puts "In this #{fruit} we have #{vitamin}"
#end

#puts new_variable
#puts fruits 

colors = ["red","blue","green","yellow","white","black"]
new_colors =[]
colors.each do |color| 
	new_colors << color.upcase 
end 

p colors
p new_colors
