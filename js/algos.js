/*
Release 0
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
console.log(largest(["long phrase","longest phrase","longer phrase"]));
// it would return "longest phrase"
console.log(largest(["Joey's Double PIZZA","How're you dong?","We were on a break!","In London!","Judy, pick up the sock"]));
// it would return "Judy, pick up the sock"
console.log(largest(["Apple","Banana","Cranberry","Dates","Eat","Fruits","Grapes","Honey","ItaPalm","Juice","Kiwi","Lemon","Mango","Nimbu","Orange"]));
// it would return "Cranberry" 
