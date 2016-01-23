// # // Separate Numbers with Commas in JavaScript **Pairing Challenge**
// # 
// # 
// # // I worked on this challenge with: Eric Tenza.
// # 
// # // Pseudocode
// # # CREATE var 'separateComma'
// #   # SET EQUAL to a function, takes 1 argument (integer),
// # #   IF argument length is less than 4
// # #     RETURN it
// # #   ELSE
// # #     CREATE var 'string' set equal to argument
// # #       TURN 'string' to string
// # #       SPLIT 'string' should be an array
// # #       REVERSE 'string' array
// # #       
// # #       START FOR LOOP, takes 3 arguments
// # #         INITIALIZATION create counter, set to 1
// # #         CONDITION while counter < length of array
// # #         EXPRESSION add one to counter
// # #         STATEMENT
// # #           IF counter is divisible by 3, add comma
// # #       
// # #       CREATE var 'output', SET EQUAL to, reverse array again, and join
// # #       RETURN 'output'
// #     
// # // Initial Solution
 var separateComma = function(integer) {
   var string = integer.toString();
   if (string.length < 4) {
     return string;
   } else {
   string = string.split('');
   string = string.reverse();
     for (var counter = 3; counter < string.length; counter +=4) {
         string.splice(counter, 0, ',');
     }
   }
   var output = string.reverse().join('');
   return output
 }
 
 console.log(separateComma(10000))

// # // Refactored Solution
// # NONE
// # 
// # 
// # 
// # // Your Own Tests (OPTIONAL)
// # NONE
// # 
// # 
// # 
/*// Reflection
     Q: What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
     A: It wasn't much more difficult in terms of planing and approach. We pretty much had the same idea as we would've in Ruby.

     Q: What did you learn about iterating over arrays in JavaScript?
     A: Iterating over arrays in Javascript is a lot more hands on than in Ruby. 'for loops' unlike the '.each' method requires
        quite a bit more in terms of arguments and information.

     Q: What was different about solving this problem in JavaScript?
     A: Definitely the usage of a function constructor with a 'for loop' nested within the 'if else'. We also used a new
        method '.splice'.

     Q: What built-in methods did you find to incorporate in your refactored solution?
     A: We didn't exactly refactor as I was under a time constraint (which I did mention prior to pairing). I sincerely believe
        that our initial solution is pretty solid even without refactoring though. As for new methods, we used '.splice' which 
        I wasn't all that familiar with prior.

*/