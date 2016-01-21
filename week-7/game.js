 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Guessing game, guess the location of the ball and gain 1 gold. Guess wrong and lose 1 gold. Player gets three tries. 
// Overall mission: Guess where the ball is and gain the maximum gold of 3.
// Goals: Guess location of ball, gain gold.
// Characters: Player and Ball
// Objects: Player and Ball
// Functions: intro, draw, gameOver, and guess.

// Pseudocode
// DEFINE 'ball' object
// 	SET 'position' value equal to random number between 1 and 3
// 	SET 'gold' value equal to 3

// DEFINE 'player' object
// 	SET 'gold' value equal to 0

// DEFINE 'intro' function
// 	PRINT introduction to CONSOLE, describe game and rules

// DEFINE 'draw' function
// 	PRINT examples of ball location
// 	PRINT "#-#-#" for visual

// DEFINE 'guess' function
// 	DO LOOP 3 times (maximum attempts)
// 		IF 'guess' is correct
// 			ADD 1 'gold' to 'player'
// 			REMOVE 1 'gold' from 'ball'
// 		ELSE
// 			ADD 1 'gold' to 'ball'
// 			REMOVE 1 'gold' from 'player'
// 	CALL 'gameOver' function

// DEFINE 'gameOver' function
// 	PRINT game over
// 	IF 'player' object has positive amount of gold
// 		PRINT 'gold' gained
// 	ELSE
// 		PRINT 'gold' owed

// Initial Code
var ball = {
	position: (Math.floor(Math.random() * 3) + 1),
	gold: 3
};

var player = {
	gold: 0
};

function intro() {
	console.log("Hi! Ever played 'guess where the ball is under the cup'?");
	console.log("You have?! Well great! Same idea!");
	console.log("We're starting, so watch carefully...");
	console.log("Call out 1, 2, 3 as it's location from left to right.");
	console.log("You get 3 tries");
};

function draw() {
	var i = 0;
	do {
		x = Math.floor(Math.random() * 3) + 1;
		switch (x) {
			case 1:
				console.log("O-#-# => 1")
			break;

			case 2:
				console.log("#-O-# => 2")
			break;

			case 3:
				console.log("#-#-O => 3")
			break;
		};
		i += 1;
	}
	while ( i < 3);
	console.log("#-#-#");
};

function gameOver() {
	console.log("=======");
	console.log("GAME OVER");
	if (player.gold > 0) {
		console.log("You've gained..." + player.gold + " gold!");
	} else {
		console.log("You owe..." + (player.gold * -1) + " gold!");
	};
	console.log("=======");
};

function guess() {
	var i = 0;
	do {
		var x = Math.floor(Math.random() * 3) + 1;
		console.log("=======");
		console.log("PLAYER: I'm guessing... " + x)
		console.log("=======");
		if (x === ball.position) {
			console.log("Nice! You've found me! Take 1 gold.");
			ball.gold -= 1;
			player.gold += 1;
		};

		if (x != ball.position) {
			console.log("BALL: Wrong! I'm taking 1 gold from you!");
			ball.gold += 1;
			player.gold -= 1;
		};
		i += 1;
	}
	while ( i < 3);
	gameOver();
}

intro();
draw();
guess();
console.log("==================================")
console.log("Ball position is " + ball.position)


// Refactored Code
// Spent too much time on initial, timeboxing out of refactoring.





// Reflection
// Q: What was the most difficult part of this challenge?
// A: Not getting too ambitious of a game idea simple as 
//	  to not eat up too much time from other challenges.
//
// Q: What did you learn about creating objects and functions that interact with one another?
// A: Nothing too new, I did learn about IF ELSE syntax
//	  that I didn't know about prior. I was scratching 
//	  my head wondering why my IF ELSE statements weren't working.
// Q: Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// A: I didn't use them in my refactored solution as I didn't have one, 
//    but I did learn about 'Math', 'floor', 'random', and 'do while' statements.
// Q: How can you access and manipulate properties of objects?
// A: Simplest way is to call them by their name to access and 
//    set them with '=' to another value to manipulate.