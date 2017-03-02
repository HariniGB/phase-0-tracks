#PSEUDOCODE
#Create a nested data structure for Restaurant name "Dezi Indiawala" 
#The restaurant has branches in different cities, has basic food and special foods, etc
#List of customers who have visited this restaurant. 
#The restaurant also has cost details and festival foods list along with their employees list.
#Add the new customers to the data strucutre.
#Update the food items (as the menu changes frequently).
#Delete a branch (as there might be some issues in that branch).
#Display the list of items from a array inside hash. 
#Display specific details from the nested data structure. 

dezi_indiawala = { branches: {
	san_francisco: { basic_food: ["Burger","Finger chips","Sandwitch","Fresh juice","Samosa"],
		special_food: ["Pizza","Aloo tikki","Baati","Chana Bhatura","Imarti","Jalebi","Kachori","Pakoda"],
		customers_list: ["Astrid","Lydia","Jane","Callum","Aryan","Senthil","Kumar","Karthik"]
	},
	new_york: { basic_food: ["Hot chocolate","Chips","Chicken rolls","Egg burger"],
		special_food: ["Kheer","Kachori","Samosa","Naan","Paratha","Tandoori"],
		customers_list: ["Sheela","Emili","Maxwell","Roman","Ravi","Surya","Kamal","Meena","Meera"]
	},
	texas_austin: { basic_food: ["Ice tea","Dosa","Vada","Burger","Fresh juice"],
		special_food: ["Chapathi","Chicken Tikka","Dal","Dum aloo","Chaat","Biryani"],
		customers_list: ["Willa","Landon","Nathan","Owen","Abel","Eliana","Mabel","Margaret"]
	},
	chicago: { basic_food: ["Hot dogs","Hot chocolate","Coffee","Burger","Sandwith","Samosa","Vada","Fresh juice"],
		special_food: ["Bonda","Biryani","Chana Bhatura","Imarti","Jalebi","Kheer","Chicken 65"],
		customers_list: ["David","Jeeva","Amala","Rajini","sivaji","Jaya","Jackson","Jude"]
	}
},
    cost_details: { food_cost: {"Burger" => 5,
    	"Finger chips" => 2,
    	"Sandwitch" => 5,
    	"Fresh juice" => 6,
    	"Samosa" => 4,
    	"Hot chocolate" => 6,
    	"Chips" => 2,
    	"Chicken rolls" => 8,
    	"Egg burger" => 5,
    	"Ice tea" => 3,
    	"Dosa" => 4,
    	"Vada" => 4,
    	"Hot dogs"=> 6,
    	"Coffee"=> 3 },
    	events_cost:{"Wedding" => 10000,
    	    	"Birthday" => 350,
    	    	"Kids Birthday" => 500,
    	    	"Engagements" => 1500,
    	    	"Baby Shower" => 2000,
    	    	"Farewell party" => 1500,
    	    	"Yearly function" => 2500,
    	        "others" => "varies"},
    	festiv_food: { diwali:["Namak paree","Shakka pare","Chivda","Shammi Kabab","Dhokla","Vada pav"],
    		dashara: ["Payasam","Pongal","Kesari","Pulihora","Paniyaram","Sundal","Poha"],
    		new_year: [{"cakes" => "all sizes"},"Puddings","Puffs","Chocolate Fudge","Muffins","Cup cakes"]
	}
},
    employees: { part_time: ["Ezra","Asher","Oliver","Olivia","Mia","Penelope","Cora","Leo","Jack","Wyatt","Henry","Rose"],
    	full_time:["Luna","Nora","Liam","Benjamin","Ethan","Scarlett","Axel","John","Lucy","Maya","Lila","James","Daniel","Soren","Lily","Lucky"]
}
}
## --------------------->Add the customers list in the two cities (SF and NY)<-----------------------------------------------------------
puts "Add in the end of the array:"
puts dezi_indiawala[:branches][:san_francisco][:customers_list].push("Leah","Sarah","Elizabeth","Kaylee","Victoria","Eli","Nicholas")
puts "Add in the beginning of the array:"
puts dezi_indiawala[:branches][:new_york][:customers_list].unshift("Willa","Landon")
## --------------------->Remove a customer from the customers list in in the two cities (chicago and texas_austin) <---------------------
puts "Remove from the end of the array:"
puts dezi_indiawala[:branches][:chicago][:customers_list].pop(2)
puts "Remove from the beginning of the array:"
puts dezi_indiawala[:branches][:texas_austin][:customers_list].shift(3)
## --------------------->Update the special_food in SF branch<----------------------------------------------------------------------------
puts "change Baati to Bakarwadi:"
puts dezi_indiawala[:branches][:san_francisco][:special_food][2] = "Bakarwadi" 
## --------------------->Update the food_cost of the "Egg burger"<------------------------------------------------------------------------
puts "change the cost of Egg burger from 5 to 7:"
puts dezi_indiawala[:cost_details][:food_cost]["Egg burger"] = 7
##---------------------->Delete a branch (as there might be some issues in that branch).<-------------------------------------------------
puts "Delete the branch if they have less than 6 customers:"
if dezi_indiawala[:branches][:san_francisco][:customers_list].length < 6
	dezi_indiawala[:branches].delete(:san_francisco)
elsif dezi_indiawala[:branches][:new_york][:customers_list].length < 6
	dezi_indiawala[:branches].delete(:new_york)
elsif dezi_indiawala[:branches][:texas_austin][:customers_list].length < 6
	dezi_indiawala[:branches].delete(:texas_austin)
else dezi_indiawala[:branches][:chicago][:customers_list].length < 6
	dezi_indiawala[:branches].delete(:chicago)
end 
puts dezi_indiawala[:branches]
puts "The texas_austin branch got deleted."
##---------------------->Display the list of items in nested data strucutre.<-------------------------------------------------------------
puts "Dispaly the array inside a hash"
puts dezi_indiawala[:cost_details][:festiv_food][:diwali]
puts "Display the hash inside an array"
puts dezi_indiawala[:cost_details][:festiv_food][:new_year][0]
##---------------------->Display specific details from the nested data structure.<---------------------------------------------------------
puts "Display the food items which has the cost value 5:"
 dezi_indiawala[:cost_details][:food_cost].each do |key,value| 
 	puts key  if value >= 5
 end
puts "Diplay the list of full time employees name starting with 'L' :"
dezi_indiawala[:employees][:full_time].each do |name| 
	puts name if name[0] == "L"
end





