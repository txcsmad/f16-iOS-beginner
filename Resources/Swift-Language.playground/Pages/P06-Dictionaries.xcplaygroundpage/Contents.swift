/*:
 ![Make School Banner](./swift_banner.png)
 # Dictionaries
 
 Dictionary is a collection type that can store multiple values, and each value has a unique key associated with it. (If you know Python, you may be familiar with Python dictionaries; in Java these are called HashMaps.) Unlike arrays, dictionaries are _unordered_, which means they do not keep the values in any particular order. Dictionaries are helpful in situations where you want to quickly look up a value based on its unique key.
 
 ## Instantiation
 Let's jump right in and define a dictionary variable.
 */
var cities: [String: String] = ["New York City": "USA", "Paris": "France", "London": "UK"]
/*:
 As you can see, the type of a dictionary depends on both the type of its key and the type of its value. The syntax to declare a dictionary type is `[<key type>: <value type>]`. In the example above, the key and the value are both `String`. In this case, the key is the name of a city, and the value is the country that the city is in.
 Just like arrays, the type of the dictionary can be inferred, so the `[String : String]` part is not strictly necessary.
 
 Also like arrays, you can both instantiate and place items in a dictionary using a literal, in this case a _dictionary literal_, which you can see on the right-hand side of the expression. As you can see, place a colon `:` between each key and its corresponding value, and use a comma `,` to separate each key-value pair.
 */
/*:
## Examine the Dictionary
 To count the number of key-value pairs, you can use the `count` property just like arrays. `isEmpty` works as well.
 */
print("The dictionary contains \(cities.count) items.")
/*: */
/*:
 ## Using the Dictionary
 You can add a new key-value pair like this:
 */
cities["San Francisco"] = "USA"
/*:
 It's similar to putting a value in an array, except instead of putting the index number inside the brackets, you put the key.
 
 You can also the change the value that a key is associated with in the same manner:
 */
cities["San Francisco"] = "United States of America"
/*:
 When trying to retrieve a value for a key, there is a possibility that key-value pair does not exist, so you have to make sure you check for this case. As a result, it is best to use optional binding to retrieve a value from the dictionary:
 */
if let country = cities["London"] {
    print("London is in \(country).")
} else {
    print("The dictionary does not contain London as a key.")
}
/*:
 You can remove a key-value pair simply by setting the key's value to nil:
 */
cities["London"] = nil
print(cities) //does not contain "London" anymore
/*:
 To empty the dictionary:
 */
cities = [:]
//: - note: `[:]` is the literal for empty dictionary, it can't be `[]` because that means empty array
/*:
 To define a new empty dictionary:
 */
var dictionary = [String: Int]()
// or
var anotherDictionary: [String: Int] = [:]
/*:
 Notice how the type of the values is Int. The value type can be any type you want. The key can also be any type you want. However, the key has to conform to the _hashable_ protocol. This has to do with how the dictionary actually works beneath the hood, but that's out of the scope of this tutorial. All the Swift basic types work as a key, and there are rarely any situations that you will need a custom type to be the key anyway.
 */



/*: 

 ### Challenge
 
 Dictionaries are similar to arrays. Where arrays hold elements as a list, dictionaries organize elements by key. A key is a name you use to identify an element. When working with an array you'll want to access elements by their index position. When working with a dictionary you'll access elements by their name. 
 
 Think of this like the difference between asking for all of the mail from mailbox number 3 (array), or asking for all of the mail in the mail box named "joe smith" (dictionary).
 
 - callout(Challenge): Imagine you have to create an app to organize all of your instructors. You want to be able to find an instructor if you type their name.
 
     1. Define a variable to hold instructors. Set it equal to a dictionary with String key, a String value.
     
     2. Add one of the instructors in your track to the dictionary. Use their first name as the key and last name as the value. Repeat this twice more so you have three instructors in the dictionary.
     
     3. Imagine your app can send a message to an instructor. You need to get their fullname from the dictionary first. Using their first name print the last name. 
     
     4. Since Swift can't be sure that a key exists in a dictionary values are retruned as optionals. Unwrap the optional from the previous example.
     
     5. Let's test that optional thing. Our app will crash if we ask for a value that has no corresponding key! Use print to get at a value with a nonexistent key. I dare you to unwrap that!
     
     6. Unwrap the optional from step 5. Hmmm... not so good huh? 
     
     7. Reconfigure the line above to check for nil before printing the value.
     
     8. That was all too easy but not that useful. I mean why would you have to provide the first name of an instructor. You've decided to refactor your app so that all of the instructors will be organized by track. Create a new dictionary of type String: [String].
     
     9. Add a track of instructors to the new dictionary. This value this time will be an array of Strings
     
     10. Now get the apps track from your dictionary. It should be an optional array of Strings. Test for nil before printing the value.
 
 - note: When defining a dictionary you define a Type for both the key and the value.
 
*/
// Write your answers here: 










/*: 
 
 ### Answer
 
 */
/*
// 1)
var instructors = [String: String]()
// var instructors2: [String: String] = [:] // Alternative

// 2)
instructors["Grey"] = "Chen"

// 3)
instructors["Jesse"] = "Tipton"

// 4)
instructors["Veronica"] = "Lin"

// 5)
print(instructors["Jesse"]!)

// 6)
// print(instructors["Bowie"]!)

// 7)
if instructors["Bowie"] != nil {
    print(instructors["Bowie"])
}

// 8)
var tracks = [String: [String]]()

// 9)
tracks["apps"] = ["Grey Chen", "Jesse Tipton", "Davi Chaves", "Veronica Lin"]

// 10)
tracks["games"] = ["Steve Brennan", "Ann Michelsen", "Mitchell Hudson"]

// 11)
if let apps = tracks["apps"] {
    print(apps)
}

*/



/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
