/*
PSEUDOCODE
An object for th grocery list would make the most sense because it can hold properties 
such as quantity.
Array would not be able to do this as intuitively.

DEFINE var 'groceryList'
	SET EQUAL to object
		ADD items into 'groceryList'
			ADD quantity to items

DEFINE function 'add' with two arguments 'item' (string) and 'quantity' (integer)
	ADD new item with quantity to 'groceryList'

DEFINE function 'remove' with one argument 'item' (string)
	REMOVE item from 'groceryList'

DEFINE function 'update' with two arguments 'item' (string) and 'quantity' (integer)
	FIND 'item' in 'groceryList'
		UPDATE with new 'quantity'

DEFINE function 'print'
	PRINT 'groceryList', make look pretty

*/

/* Initial Solution */
// var groceryList = {
// 	'Apples': 8,
// 	'Oranges': 5
// }

// var add = function(item,quantity) {
// 	groceryList[item] = quantity;
// }

// var remove = function(item) {
// 	delete groceryList[item];
// }

// var update = function(item,quantity) {
// 	groceryList[item] = quantity;
// }

// var print = function(list) {
// 	console.log('   GROCERY LIST   ');
// 	console.log('==================')
// 	for (var item in list) {
// 		console.log(item + ': ' + list[item])
// 	}
// 	console.log('==================')
// }

/* Refactored Solution */
var groceryList = {
	'Apples': 8,
	'Oranges': 5
}

var addAndUpdate = function(item,quantity) {
	groceryList[item] = quantity;
}

var remove = function(item) {
	delete groceryList[item];
}

var print = function(list) {
	console.log('   GROCERY LIST   ');
	console.log('==================')
	for (var item in list) {
		console.log(item + ': ' + list[item])
	}
	console.log('==================')
}

/* DRIVER CODE */
addAndUpdate('Grapes',10);
console.log(groceryList);
remove('Apples');
console.log(groceryList);
addAndUpdate('Oranges',999);
console.log(groceryList);
print(groceryList);


/* Reflection */
/*
Q: What concepts did you solidify in working on this challenge? 
(reviewing the passing of information, objects, constructors, etc.)
A: More of the 'for...in' loop issues I was having. Not sure why I find this such a
weird concept to wrap my mind around. Also accessing property values in object.

Q: What was the most difficult part of this challenge?
A: Accessing property values in objects took me longer than I'd care to admit.

Q: Did an array or object make more sense to use and why?
A: An object made a lot more sense, although an array would've been easier to access IMO.
An object can hold many properties per a given element such as quantity in this case. An aray
is a list. Although I guess I could've done an array of objects or an array of arrays.
*/