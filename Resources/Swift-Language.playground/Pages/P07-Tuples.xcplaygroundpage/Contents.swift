/*:
 ![Make School Banner](./swift_banner.png)
# Tuples
 
So far, we've come across ways of packing multiples of data into entities – things like arrays to pack an ordered list of elements of the same type, and dictionaries to maintain a set of key-value pairs. But what if you just wanted a quick solution to pack together 2 or 3 things, without the values being necessarily of the same type?
 
 Enter tuples: in Swift, when you group together a comma-separated list of expressions in parentheses, you automatically create a tuple containing it. For example, say we're tracking coordinates for a game of Battleship:
 */
let target = (2, 3)
/*:
 Option-click on the `target` variable above. What does Xcode say the type is?
 
 That's right. In this example, `target` has a type of `(Int, Int)`. We can do other things, too:
 */
let anotherTarget: (Int, Int) = (1, 1)
let applePrice: (String, Double) = ("Apple", 1.00)
let coordinate: (x: Int, y: Int) = (2, 3)
/*:
 That last one is an example of a _named tuple_. Normally, you retrieve elements of tuples by appending `.0`, `.1`, etc. to their variable, like this:
 */
let itemName = applePrice.0
let itemPrice = applePrice.1
/*:
 This doesn't make too obvious as to what `.0` and `.1` represents, though – so Swift allows you to _name_ your tuple members by including it in the declaration, as seen above. Now, you can retrieve your x and y coordinates:
 */
let xCoord = coordinate.x
let yCoord = coordinate.y
/*:
 This syntax of named tuples is similar to the syntax of functions that you'll encounter later, so keep an eye out!
 */


/*:
 ### Challenge
 
 Tuples allow you to group data together. Ideally the information is related. These not lists but share some similar features. A Tuple is not a dictionary though it shares some features. Use a Tuple when an array or dictionary is more than you need. Remember, arrays and dictionaries come with a lots of features like: count, append, insert() etc. Tuples don't have extra features they just group a handful of values together. 
 
 Math is great, you like math, and math likes you! Why not use it when you program! When making games you'll often want to know the distance between two coordinates, or the angle. Locations in two-dimensional space are always defined by x and y coordnites. Tuples might be a good way to group these together in a convenient package.
 
 - callout(Challenge): Imagine you've made a game with a rock that will travel from one corner of the screen to the far corner.
 
     1. Define a variable named `startCoord`. It should be a tuple with `x = 5.1` and `y = 8.3`.
     2. Define another variable called `endCoord`. Set this to a tuple with `x = 375` and `y = 667`.
     3. How long is the trip? Remember Pythagoras? He's the guy that found a badass theorem that tells you the length of the diagonal side of a right triangle. This can be modified into a formula providing the distance between two points! Thank you Pythagoras! If your two points are a and b, the formula is `sqrt((b.x - a.x)*(b.x - a.x) + (b.y - a.y)*(b.y - a.y))`. Use this to get the length from `startCoord` to `endCoord`. Print the answer.
     
     4. Here's a new problem. Imagine you are creating an app that will allow people to send money from one phone to another. How do you keep track of the money? You can use a Double but what about the currency? If I live in the US and I type `1.00`. That's really one US Dollar. In Canada `1.00` is less. The day I wrote this `1.00 USD` is worth `1.29 CAD`. Imagine you'd like your app to be able to pass around dollar amounts along with the currency type! Create a variable that has a value of `1.00` and a currency type of `"usd"`.
     
     5. Now convert your USD into CAD. Create a new tuple with a currency type of `"cad"`, and a value that is the value of the first variable multiplied by `1.29`.
     
     6. Try that again. Create an new variable that will contain Australian dollars. Make a new tuple that will have a currency type of `"aud"`, and a value of the USD multiplied by `1.36`.
 
     7. Print a message that displays the value and the type for each of your variables. Something like:
         
             "[usValue] [usType] is [caValue] [caType]"
 
 */


// Write your answers here: 











/*: 
 ### Answer 
 
 */

/*
// 1)
let startCoord = (x: 5.1, y: 8.3) // Using a Double here means you don't have to convert the value below.

// 2)
let endCoord = (x: 375, y: 667) // These values are type Int

// 3) something like this though your answer might look different
import Foundation

// endCoord did not use a Double value so we need to convert the values to Double!
let xDiff = Double(endCoord.x) - startCoord.x
let yDiff = Double(endCoord.y) - startCoord.y
let length = sqrt(xDiff * xDiff + yDiff * yDiff)
print(length)

// 4) 
let money = (type: "usd", value: 1.0)

// 5) 
let cad_money = (type: "cad", value: money.value * 1.29)

// 6) 
let aud_money = (type: "aud", value: money.value * 1.36)

// 7) 
print("\(money.value) \(money.type) is \(cad_money.value) \(cad_money.type)")

 */



/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
