/*
Release 0 :Find the Longest Phrase
Logical reasoning challenge.

PSEUDOCODE
-Create a function that has a parameter as an array.
-Iterate through each element in the array and calulate the length of the element.
-Compare which is larger in size. Initialize largest_length to store the greater value.
-Initialize a variable largest_phrase and save the element that is largest in the array.
-return the largest_phrase.
-Close the function and test using driver code by passing arguments in method call.
*/

function largest(array){

	// Initialize the largest_phrase variable.
	var largest_phrase;
	// Initialize max_length variable to 0.
	var largest_length = 0;

	//Iterate through the array. 
	for ( var i = 0 ; i < array.length; i++ ){

		//Calcualte the length of each element and compare with largest_length.
		if (array[i].length > largest_length) {

			// assign the largest_length, if the current element's length is larger.
			largest_length = array[i].length;

			//If the largest_length is the length of the current element. Then the largest phrase is the current element.
			largest_phrase = array[i];
		}

	}
	// return the largest_phrase which has the largest length. 
	return largest_phrase;
}

//DRIVER CODE
console.log("Find the Longest Phrase");
console.log("-----------------------");
console.log(largest(["long phrase","longest phrase","longer phrase"]));
// it would return "longest phrase"
console.log(largest(["Joey's Double PIZZA","How're you dong?","We were on a break!","In London!","Judy, pick up the sock"]));
// it would return "Judy, pick up the sock"
console.log(largest(["Apple","Banana","Cranberry","Dates","Eat","Fruits","Grapes","Honey","ItaPalm","Juice","Kiwi","Lemon","Mango","Nimbu","Orange"]));
// it would return "Cranberry" 
console.log("-------------------------");

/*
Release 1
Grouping functions 

PSEUDOCODE
-Create a function that takes two objects as parameters.
-Create a function to collect all values in an object. Use it to store the object values in an array.
-Iterate through the arrays.
-Compares both the objects' values.
-If they have one or more similar value, return true. Else return false.
-Note: the two objects may not even have any of the same keys
*/


// Method to get an object and return the array of values.
function values(obj){

	//Initialize an empty array to store the values.
	object_values = [];

	////Initialize a variable and store the keys in an array.
	object_keys = Object.keys(obj);

	//Iterate through the object using Object.keys method.
	for(var i = 0; i < object_keys.length; i++){

		//Push each key's value in the object_values array.
		object_values[i] = obj[object_keys[i]];
	}

	//return the array of values.
	return object_values;
}

//A function to check whether two objects have one or more same values.
function same_values(obj1, obj2){

    // Store the obj1 object's values in an array.
	obj1_values = values(obj1);

	// Store the obj2 object's values in an array.
	obj2_values = values(obj2);

	// Iterate through the obj1 using a variable 'i' as index.
	for (var i = 0 ; i < obj1_values.length ; i++){

		// Iterate through the obj2 using a variable 'j' as index.
		for (var j = 0 ; j < obj2_values.length ; j++){

			// Compares both the objects' values.
			if (obj1_values[i] === obj2_values[j]){

				// If they have one or more similar value, return true.
				return true;
			}
		}
	}
	// If there is no same values, then return false.
	return false;
}


//DRIVER CODE
console.log("Find a Key-Value Match");
console.log("----------------------");
obj1 = {name: "Steven", age: 54};
obj2 = {name: "Tamir", age: 54};
console.log(same_values(obj1, obj2));
//would return true
obj3 = {"Number": 5, "String": "Hello!"};
obj4 = {"Boolean": true, "Float": 5.5};
console.log(same_values(obj3, obj4));
//would return false
console.log("------");




