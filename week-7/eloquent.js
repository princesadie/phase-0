// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var i = 20
var string = "i * 10 = "
console.log("i = 20")
console.log(string + (i * 10))

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!"
prompt("What's your favorite food?");
alert("Hey! That's my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle
var i = "#"
for (var counter = 0; counter < 7; counter ++, i += "#") {
	console.log(i)
}

// FizzBuzz
for (counter = 1; counter <= 100; counter ++) {
 if (counter % 3 == 0)
   console.log("Fizz");
 else if (counter % 5 == 0)
   console.log("Buzz");
 else
   console.log(counter);
}

// Functions

// // Complete the `minimum` exercise.
function min(x,y) {
  if (x < y) 
    return x
  else
    return y
};


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
	name: "Prince Sadie",
	age: 23,
	fav_food_1: "Calamari",
	fav_food_2: "Pho",
	fav_food_3: "Wings",
	quirk: "I like to keep my stereo volume on an odd number."
};