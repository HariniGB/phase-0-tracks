#PSEUDOCODE
#Create a nested data structure for Restaurant name "Dezi Indiawala" 
#The restaurant has branches in different cities, has basic food and special foods, etc
#List of customers who have visited this restaurant. 
#The restaurant also has cost details and festival foods list along with their employees list.
#Add the new customers to the data strucutre.
#Update the food items (as the menu changes frequently).
#Delete a branch (as there might be some issues in that branch).
#Display the branch which has maximum  no of customers and which has the special food items.
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
    		new_year: ["Cakes","Puddings","Puffs","Chocolate Fudge","Muffins","Cup cakes"]
	}
},
    employees: { part_time: ["Ezra","Asher","Oliver","Olivia","Mia","Penelope","Cora","Leo","Jack","Wyatt","Henry","Rose"],
    	full_time:["Luna","Nora","Liam","Benjamin","Ethan","Scarlett","Axel","John","Lucy","Maya","Lila","James","Daniel","Soren"]
}
}
