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
	}
	//Return the new varaible which has the reversed word.
	return reversed_word;
}

// Driver code
console.log(reverse("hello"));
// should return "olleh"
console.log(reverse("Welcome!"));
// returns "!!! yad ecin a evaH"