/*:
 ![Make School Banner](./swift_banner.png)
 # Control Flow
 In this section, we'll cover how to use the following statments in Swift: `if`, `for`, `while`, and `switch`.
 
 ## `if` statments
 A simple `if` statment in Swift looks like the following:
 */
let isHuman = true

if isHuman {
    print("I'm a human")
} else {
    print("Non human")
}
//: Note that there's no parentheses around the condition - they're optional in Swift.
/*:
 ## `for-in` Loops
 The `for-in` loop performs a set of statements for each item in a sequence.
 */
let cities = ["New York", "Paris", "London", "Shanghai"]

for city in cities {
    print("I live in \(city)")
}
/*:
 The `for-in` loop is similar to a Python `for` loop or the Java `enhanced for` loop.
 
 We can also use a `for-in` with a range of numbers:
 */

for index in 1...3 {
    print("I can count to \(index)")
}
/*:
The `...` is called the _closed range operator_. It generates a range that is _inclusive_ of both the first and last number. There's also a _half-open range operator_, which looks like this: `a..<b`. That will generate a range that includes a, but excludes b.
 */
for i in 1..<5 {
    print(i)
}
/*:
 If you want access to both the index number and the element value of a certain array, there's a way to do that too! Simply enumerate over `cities.enumerated()`, which gives you a _tuple_ containing the index and element.
 */
for (index, element) in cities.enumerated() {
    print("at \(index): \(element)");
}
/*:
 ## `while` Loops
 A `while` loop keeps running as long as its condition is `true`.
 */
var result = 1

while result < 60 {
    result *= 5
}

print(result)
/*:
 `result` will be updated as follows: 1, 5, 25, 50, 125. Notice that the loop ran 4 times, but it stopped once `result` became more than 60.
*/
/*:
 ## `switch` statement
 A switch statement allows you to define what happens for specific values of a variable.
 Here, we decide what to do based on what `grade` is. We could do the same thing with lots of `if` statements, but the `switch` syntax is more compact and easier to read.
 */
let grade = "A"

switch grade {
case "A":
    print("Excellent grade")
case "B":
    print("Good grade")
case "C":
    print("Passing grade")
default:
    print("Unknown grade")
}
/*:
 Two important things you should keep in mind when using `switch` in Swift:
 * You don't need to add a `break` statment after every condition. (Yay!)
 * The `default` case is like an `else` case that would run if non of the previous conditions are met. Every `switch` statement must have a `default` case (this is not the case with enums, but we'll get there soon).
 */

/*:
 For more details on what we covered here, please visit [Apple's control flow guide.](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ControlFlow.html#//apple_ref/doc/uid/TP40014097-CH9-ID120)
 */


/*: 
 ### Challenge
 
 Flow control is a major part of app development. The apps you write will need to make decisions all the time. The if else, and switch statement are two of the most important tools for flow control. 
 
- callout(Challenge):
    1. Imagine you are working on app that will help you keep track of Make School instructors. Create an array that holds some of the instructors:

    `Daniel, Martin, Stephen, Ann, Adam, Dion, Mike`

    Feel free to add otheres! Print all of the instructor names to the console.

    2. Imagine that you can type the first letter of an instructor's name and get a list of all of the instructors whose name begins with the letter. Simulate this by creating a new array to hold the instructors whose name begins with the letter "D". Then create a for-in loop that will loop once for each instructor in the instructors array. Use an if-statement to look for names that beign with the letter "D" (Hint: you can use `hasPrefix()`, something like: `name.hasPrefix("D")`). Add each instructor you found to a new array and print that array after the loop to check your answer.
 
    3. Imagine you want to search for a one instructor by name. Create a loop that will stop after it finds `"Frango"`. Hint: you can use `break` to stop a loop early! Print a message stating that you have found `"Frango"`.

    4. Oops you just searched for an instructor not in the list? Your program needs to handle this how can you print a message saying `"[name] not found"`.

    5. Image you are making a game. There is an object that moves from one side of the screen to the other and then back. Game objects represent their horizontal position as an x value. The screen is `375` points wide. When `x` is less than `0` or when the `x` is greater than `375`, velocity needs to be inverted. For example if volicity was `10` and the `x` position of the object was `380` velocity would become `-10`. Recreate the example in code. Print velocity to show that it has changed to `-10`.
 
*/
// Write your challenge code here:










/*: 
 
 ### Answer
 
 */


/*
// 1
var instructors = ["Daniel", "Martin", "Stephen", "Ann", "Adam", "Dion", "Mike"]
for instructor in instructors {
    print(instructor)
}

// 2
var foundInstructors = [String]()
for instructor in instructors {
    if instructor.hasPrefix("D") {
        foundInstructors.append(instructor)
    }
}

print(foundInstructors)


// 3
for instructor in instructors {
    if instructor == "Dion" {
        print("Found Dion")
        break
    }
}

// 4
var searchStr: String?
for instructor in instructors {
    if instructor == "Frango" {
        searchStr = instructor
        break
    }
}

if let searchStr = searchStr {
    print(searchStr)
} else {
    print("Frango not found")
}


// 5
var width = 375
var velocity = 10
var x = 380

if x < 0 || x > width {
    velocity = -velocity
}

print(velocity)

*/



/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
