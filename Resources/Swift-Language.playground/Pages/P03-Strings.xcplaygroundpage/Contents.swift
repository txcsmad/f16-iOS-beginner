/*:
 ![Make School Banner](./swift_banner.png)
# Strings

You're probably familiar with the idea of strings from other programming languages. Simply put, strings are sequences of characters. Most often, strings contain text that will be displayed to users of your app. In this playground, we will talk about how you can use strings in Swift.
## String Literals

The simplest kind of string to create is a _string literal_. This is a string whose value is known at compile-time, and it is written as a sequence of characters surrounded by double quotes:
*/
let greeting = "Hello, Make School!"
/*: */
/*:
## Putting Strings Together and Tearing Them Apart

You can glue (_concatenate_) strings together with the `+` operator:
*/
let season = "summer"
let salutation = "Have a nice " + season + "!"
//: Also, if you want to join an array of strings together, you can use the `joinWithSeparator` method of `String` to conjoin them with a delimiter of your choosing:
let beetles = ["John", "Paul", "Ringo", "George"].joined(separator: " and ")
//: You can go in the opposite direction, too, with a method borrowed from NSString:
import Foundation
let brokenUpBeetles = beetles.components(separatedBy: " and ")
/*:
- note: NSString is the name of Objective-C's string class. Notice that to use an NSString method, we had to `import Foundation`. Foundation is a framework that contains the fundamental classes and data structures from Objective-C. Most of Apple's code is written in Objective-C, so you will be interacting with Objective-C code often, even though the code you write is in Swift. Thankfully, Apple made it so that Swift interoperates with Objective-C seamlessly. Any time you work with any classes that are prefixed with NS, you're working with Objective-C classes, and you will have to `import Foundation`. You can read more about Foundation [here](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/ObjC_classic/index.html#//apple_ref/doc/uid/20001091).
*/
/*: 
## Mutating Strings
 
 When a string is declared as a constant (with the `let` keyword), that string cannot be modified. So far, we have only created such **immutable** strings.
If we want to change a string in-place, perhaps by adding another string onto the end of it, we declare it as a variable (note the `var` keyword):
*/
var mutableString = "Call me"
mutableString += " maybe"
/*: 
 The `+=` operator adds the second string to the first. It's shorthand for `mutableString = mutableString + " maybe"`.
*/
/*:
## String Interpolation
 
One of the most powerful features of strings in Swift is **string interpolation**. Interpolation allows us to incorporate the values of variables by name when constructing a string. References are made by placing the variable name inside parenthesis with a preceding backslash, like this: `\(variableName)`. Let's revisit one of the examples above using string interpolation:
*/
let nextSeason = "fall"
let farewell = "See you in the \(nextSeason)"
//: But it doesn't stop there. In addition to variable names, you can include arbitrary expressions inside the interpolation segment:
let radius: Double = 3
let complexInterpolation = "The area of my circle is \(M_PI * radius * radius)"
/*: */
/*:
## Using `print` for Debugging
Sometimes things go wrong in our programs. Sometimes you just want to see how a value is changing as your program executes. When we aren't in the context of a playground, we don't have the benefit of the side pane showing us these intermediate values. At times like these, we need a way to print to Xcode's debug console. We can do this with Swift's `print` function. It takes a string and writes it to the debug area so we can see what's going on.
*/
let answer = 42
print("The answer is \(answer)")
/*: */
/*: 
## Indexing into Strings
Unlike many other languages, Swift does not allow you to extract a single character from a string by indexing into it:
*/
let barnResidents = "🐮🐔🐷🐴"
let position = 2
// let pig = barnResidents[position] // Nope! "Cannot subscript String with an Int" 😱
/*:
This is because characters in Swift strings actually represent conceptual units called **extended grapheme clusters** that don't match one-to-one with the bytes used to encode the string. You don't need to worry about what a grapheme cluster is; what matters is that you can't use a plain old integer index.

Instead, you need to use the `index` method, using either the startIndex or endIndex with an offset, which uses special knowledge about how strings store characters to calculate a suitable index:
*/
let index = barnResidents.index(barnResidents.startIndex, offsetBy: position)
let realPig = barnResidents[index]
/*: */
/*:
## Iterating Over Strings

We can use a `for` loop to get each `Character` in sequence from a `String`:
*/
for animal in barnResidents.characters {
    let statusReport = "\(animal) is in the barn."
}
/*: */
/*:
## `String` is a Value Type

In Swift, strings follow the semantics of **value types**. That means that when you assign a string value to a variable, or pass a string value to a function, the destination gets its own "copy" of the string. If the new string is then modified, these changes have no effect on the original string. This is in contrast to **reference types**, where all variables refer to the same instance of an object, so changing the value for one changes it for all references.
 
The reason "copy" is in quotes above is that, really, strings only **appear** to be copied when they are assigned. Behind the scenes, Swift is clever enough not to create an all-new instance of the string immediately. Only when a string is changed does Swift allocate the new memory for storing the modified string.
After these lines executes, `tigersAndMoreBears` points to exactly the same memory as `tigersAndBears`:
*/
let tigersAndBears = "🐯🐯🐻🐻"
var tigersAndMoreBears = tigersAndBears

// After this line executes, the two strings point to two distinct areas in memory:
tigersAndMoreBears += "🐨🐨"
/*: */
/*: 
## Conclusion

In this playground, you've learned about some of the basic and intermediate operations you can perform on strings in Swift: creating literals, concatenating strings together and splitting them apart, string interpolation, and indexing into strings. There are many more things you can do with Strings, so explore the Swift standard library, and remember that you can also use methods from Cocoa's `NSString` as well. There are some great utilities for manipulating strings in there!
*/






/*:
 
 ## Challenges
 
 Use the concepts covered in this section to test your knowledge and expand your skills.
 
 - callout(Challenge): Imagine you are writing a new app that will write personal ads. You don't need to write a personal ad but you have a few friends that could use this. You will supply key words, and the app will write the ad.
 
     1. Define 4 variables that each contain a string. Set the value to any word that matches the variable name:
         - adjective
         - location
         - animal
         - name
         - music genre
         - verb
     
     Each of these variables should a string.
     
     2. Write a print statement containing the following string.
     
             I adore [adjective] walks on the [location] with my pet [animal], named [name]. We enjoy singing [genre] music while we [verb] together.
 
 
 */

// Type your code here: 







// Should output something like: 
// I adore long walks on the beach with my pet pug, named coco. We enjoy singing polka music while we dance together.



/*: 
 
 ## Answer 
 
 Your answer should look like what I have below.
 
 */


/*
let adjective = "long"
let location = "beach"
let animal = "pug"
let name = "coco"
let genre = "polka"
let verb = "dance"

print("I adore \(adjective) walks on the \(location) with my pet \(animal), named \(name). We enjoy singing \(genre) music while we \(verb) together.")
*/




/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
