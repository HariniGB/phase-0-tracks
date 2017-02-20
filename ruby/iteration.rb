def names 
	name2 = "Harini"
	puts "Pairing session 5.3 Iterations"
	yield("Natalie",name2)
	puts "Great! Learned .each , .times and .map methods"
end 

names {|x, name2| puts "#{x} and #{name2}" }
