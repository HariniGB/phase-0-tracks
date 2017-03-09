// Declare two separate arrays:
// One with four colors

var colors = ["Blue", "Yellow", "Red", "Green"];
var names = ["Ed", "Bert", "Scarlett", "Julie"];

/*
// push an element to the last position of the array.
colors.push("Pink");
names.push("Omar");

console.log("push an element to the last position of the array")
// display the array 
console.log(colors);
console.log(names);

// push an element to the first position of the array.
colors.unshift("White");
names.unshift("Mina");

console.log("push an element to the first position of the array")
// display the array 
console.log(colors);
console.log(names);

// removes the last element of the array.
colors.pop();
names.pop();

console.log("removes the last element of the array")
// display the array 
console.log(colors);
console.log(names);

// removed the first element of the array.
colors.shift();
names.shift();

console.log("removed the first element of the array")
// display the array 
console.log(colors);
console.log(names);

console.log("Display the each element")
//display each element in the array
for (var i = 0; i < colors.length ; i++){
	console.log (colors[i])
}

// Driver code
//Remove a set elements from the array 
console.log(names.splice(1,3));
// removes thhree elements from the first element in the index 1.

// dispaly the array after the splice. 
console.log(names);



// Release 1

var colors = ["Blue", "Yellow", "Red", "Green"];
var names = ["Ed", "Bert", "Scarlett", "Julie"];

//initialize the new empty object 
var horses = {};

for (var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}
console.log(horses);

// Two types of notations 
// Dot notation
horses.Bert= "White"
console.log(horses)

// Bracket notation
horses["Omar"] = "Pink"
console.log(horses)
*/

// Release 2


function Car(year, make, model, isPopular) {
	// Assign the three keys and its values as the parameters.
	this.Year = year
	this.Make = make
	this.Model = model
	this.Is_it_Popular = isPopular
	// Assign a function to the keys
	this.wheel_drive = function() { console.log("Vroom! Vroom! Vroom! Vroom!"); };
	this.horse_power = function(power) { console.log("The horse power of this car is " + power + "hp."); }; 
}
/*
// Driver code
console.log("Construction of a new car !")
var newCar = new Car(2017, "Tesla","Model S", true);
// print the object with all keys and values.
console.log(newCar);
console.log("Our car has all wheel drive.")
// call the method values using dot notation.
newCar.wheel_drive();
newCar.horse_power(400); //Passing integer as argument
console.log("---------------")
var anotherCar = new Car("2017", "Audi" , "V7", false);
console.log(anotherCar);
console.log("Our car has all wheel drive.")
// call the method values using dot notation.
anotherCar.wheel_drive();
anotherCar.horse_power("386 to 500");// Passing string as argument 
*/

// Release 3
//To iterate the loop through the keys and values of an object. s
function showObject(obj, power){
	for(var key in obj){
		console.log("The key is: " + key);

		// Use the constructor function to find the return reference of the value and compare if it's a function.
		if (obj[key].constructor == Function){
			// If the key's value is a function, call the function.
			console.log("The value is: "); 
			obj[key](power);
		}
		else {
			// print the value of the object's key. 
			console.log("The value is: " + obj[key]);
		}
	}
}

// Driver code
console.log("---------------------------------------------");
console.log("Dispaly the keys and values of the new car !");
console.log("---------------------------------------------");
var newCar = new Car(2017, "Tesla","Model S", true);
showObject(newCar, 400);
console.log("---------------------------------------------");
var anotherCar = new Car("2017", "Audi" , "V7", false);
console.log("Dispaly the keys and values of the new car !");
console.log("---------------------------------------------");
showObject(anotherCar, "386 to 500");

/*
Are there advantages to using constructor functions to create objects? Disadvantages? 
1.)It is an advantage. By using 'new' we can create a unique and the object will ahve their own copy of the functions. 
2.)It is efficient to use constructor functions. Object created by using 'new' class constructor will take only one memory space. But function objects for every class objects takes more memory and increase the processing time.
3.)The only disdavantage I can spot in Constructor Pattern is the presence of the 'new' keyword. By avoiding the use of the new keyword we can avoid the error of forgetting the new keyword. Remembering the 'new' keyword each time when we create an object is difficult. 

What is an object constructor:
Sometimes we like to have an "object type" that can be used to create many objects of one type. 
The standard way to create an "object type" is to use an object constructor function.
The above function Car is an object constructor. 
Once you have an object constructor, you can create new objects of the same type.
For example: var newCar = new Car(2017, "Tesla","Model S", true);

Different Build-in constructor function:
Examples:
var x1 = new Object();   // A new Object object
var x2 = new String();   // A new String object
var x3 = new Number();   // A new Number object
var x4 = new Boolean();  // A new Boolean object
var x5 = new Array();    // A new Array object
var x6 = new RegExp();   // A new RegExp object
var x7 = new Function(); // A new Function object
var x8 = new Date();     // A new Date object

What is 'this' keyword means:
In JavaScript, the thing called this, is the object that "owns" the JavaScript code.
The value of this, when used in a function, is the object that "owns" the function.
The value of this, when used in an object, is the object itself.
The value of this will become the new object when the constructor is used to create an object.
*/

