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
console.log("-----------------------");
console.log("Find the Longest Phrase");
console.log("-----------------------");
console.log(largest(["long phrase","longest phrase","longer phrase"]));
// it would return "longest phrase"
console.log(largest(["Joey's Double PIZZA","How're you dong?","We were on a break!","In London!","Judy, pick up the sock"]));
// it would return "Judy, pick up the sock"
console.log(largest(["Apple","Banana","Cranberry","Dates","Eat","Fruits","Grapes","Honey","ItaPalm","Juice","Kiwi","Lemon","Mango","Nimbu","Orange"]));
// it would return "Cranberry" 
console.log("-----------------------");

/*
Release 1 : Find a Key-Value Match

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

			// Compare both the object's keys. If the keys are same then check for values.
			if (Object.keys(obj1)[i] === Object.keys(obj2)[j]){

				// Compares both the objects' values.
				if (obj1_values[i] === obj2_values[j]){

					// If both objects have same key and value, return true.
					return true;
				}
			}
		}
	}
	// If there is no same key-value, then return false.
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
obj4 = {"Boolean": true, "Float": 5.5, "String": "Welcome"};
console.log(same_values(obj3, obj4));
//would return false
console.log("------------------------");

/*
Release 2 : Generate Random Test Data.

PSEUDOCODE
-Create a function that takes an integer for length and returns an array of strings of given length.
-We must have an array that stores various sizes of words from 1 to 10 letters.
-Iterate through the array of words.
-If the length of each word is equal to the input integer,
-Push that word into a new array. Initialize this new array as empty in the beginning.
-Return the new array with all the words of size  of the given integer.

*/
// Create a function with an integer parameter
function words_of_length(size){

	//Initialize an array of words of different sizes.
	var all_words = ["A","X","Y","As","An","The","ICE","So","Cake","Bun","Bread","Apple","Mango","Hair","Band","Pineapple","Jackfruit","Skiing","Swimming","Dancing","Singing","Watching","Solutions","Problem","Encyclopedia","Generation","Population"];

	//Initialize an empty array to store all the words og same size.
	var sized_words = [];

	//Iterate through the all_words array to check each element's length.
	for(var i = 0 ; i < all_words.length ; i++ ){
		//check if the word's length is equal to the given size integer.
		if (all_words[i].length == size){

			// Push the word inside the sized_word array if the condition is true.
			sized_words.push(all_words[i]);
		}
	}
	//return the sized_words array
	return sized_words;
}
 
// DRIVER CODE
console.log("Generate Random Test Data");
console.log("-------------------------")
console.log(words_of_length(3));
//would return [ 'The', 'ICE', 'Bun' ]
console.log(words_of_length(10));
//would return [ 'Generation', 'Population' ]
console.log(words_of_length(1));
//would return [ 'A', 'X', 'Y' ]
console.log("-------------------------")





