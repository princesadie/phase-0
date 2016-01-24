 // JavaScript Olympics

// I paired [with: Tim Kelly] on this challenge.

// This challenge took me [1.25] hours.


// Warm Up


// Bulk Up

var sarahHughes = {
  name: "Sarah Hughes",
  event: "Ladies' Singles!"
}

var someoneElse = {
  name: "Some One",
  event: "Mens' swimming"
}

var athletes = [
  someoneElse,
  sarahHughes
]

function addWin(athleteArray){
  //add win property to each athlete
  for (var i = 0; i < athleteArray.length; i++){
    athletes[i].win = athletes[i].name + " won the " + athletes[i].event;
    console.log(athletes[i].win);
  }
}
// console.log(athletes.length);
console.log(addWin(athletes));

// Jumble your words

var string = 'Jumble your words!';
var reversed = [];

function reverse(array) {
  var split = array.split("");
  for (var i = 0; i < split.length; i++) {
    reversed.unshift(split[i]);
  }
  var output = reversed.join('');
  return output;
}

console.log(reverse(string));

// 2,4,6,8

var testArray = [0,1,2,3,5,63,4], evens =[];

function isItEven(numArray){
  for (var i = 0; i < numArray.length; i++){
    if(numArray[i] % 2 === 0){
      evens.push(numArray[i]);
    }
  }
  return evens;
}

console.log(isItEven(testArray));



// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*// Reflection
Q: What JavaScript knowledge did you solidify in this challenge?
A: Everything. Javascript is pretty much brand new to me. I've only ever even taken a look at it when
   modding websites or copy-pasting snippets for things like smooth-scrolling on my sites.

Q: What are constructor functions?
A: Constructor functions are like Classes in Ruby, or at least that's how I'm currently viewing them.
   Like blueprints from which many instances of objects can be created.

Q: How are constructors different from Ruby classes (in your research)?
A: From my understanding a Javascript constructor is different from Ruby classes in that the 
   Javascript constructor is actually what defines the objects of a given class and not the other way around.
*/