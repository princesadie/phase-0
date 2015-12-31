#What does puts do?
Using puts returns nil (which is to say nothing) and prints the output onto a new line.

#What is an integer? What is a float?
In the simplest terms, an integer is any number that doesn't have a decimal and a float is any number that has a decimal.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The difference between float and integer division is that float division doesn't account for the left over fraction/decimal. In other words, a problem like 3/2 would return only 1 and not 1.5. An example of this in the real world would be like if someone wanted to know how many $2 bottles of cokes they could purchase with $3. The store generally wouldn't sell them 1.5 bottles of coke.

#Hours in a year 
```ruby
puts 365 * 24
```

#Minutes in a decade
```ruby
puts (10 * 8760) * 60
```

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Addition, subtraction, and multiplication are pretty straight forward and work as expected. Division, on the other, is a bit different in that unless specified to return a float, Ruby will return an integer as the answer.

#What is the difference between integers and floats?
An integer is any whole number, a non-decimal. A float is any number with a decimal point.

#What is the difference between integer and float division?
Integer division throws back an integer (i.e. 3/2 = 1) and float division provides a more complete answer with decimals (i.e. 3/2 = 1.5).

#What are strings? Why and when would you use them?
Strings are groups letters, symbols, spaces, and numbers. These are widely used wherever and whenever letters, words, or sentences must be used.  

#What are local variables? Why and when would you use them?
Variables are a way of storing information for reuse later on.P roper naming and management of variables make it easy to access and manipulate data. A variable should be used whenever you believe a particular piece of data will be used multiple times.

#How was this challenge? Did you get a good review of some of the basics?
It was a great refresher as it's been many weeks since my last interaction with Ruby. Paticularly with the gap week for the holidays, my memory has waned a bit.

#Links to the 3 challenges
[Defining Variables](https://github.com/princesadie/phase-0/blob/master/week-4/defining-variables.rb)
[Simple String Methods](https://github.com/princesadie/phase-0/blob/master/week-4/simple-string.rb)
[Local Variables and Basic Arithmetical Operations](https://github.com/princesadie/phase-0/blob/master/week-4/basic-math.rb)