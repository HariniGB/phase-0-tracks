/*  Pseudocode 
-Create a method which takes in a string and return the string in reverse
-Store the input string in a variable.
-Initialize an empty string as new variable.
-Iterate through the string using a variable index in descensing order.
-Create a variable for the index of the string and decrement it.
-Add each letter to the new varaible(empty string).
-return the new variable at the end.
*/


//Release 4
// Write Java script Porgram.

function reverse(word) {
	//Initialize a new variable with empty string.
	var reversed_word = "";

	// Iterating the given word in descending order.
	for (var i = word.length - 1 ; i >= 0 ; i--) {
		reversed_word += word[i];

		//check the condition whether i == 0
		if (i == 0) {
			// Prints the input string.
			console.log("The given word is: " + word);
		}
	}
	//Return the new varaible which has the reversed word.
	return reversed_word;
}

// Driver code
// Add driver code that prints the variable if some condition is true. 
if (5 > 3){
	console.log(reverse("hello"));
        // should return "olleh"
	console.log("The length of the string is: " + "hello".length);
}
if (1 == 1){
	console.log(reverse("Welcome!"));
	// returns "!!! yad ecin a evaH"
        console.log("The length of the string is: " + "Welcome!".length);
}

       
