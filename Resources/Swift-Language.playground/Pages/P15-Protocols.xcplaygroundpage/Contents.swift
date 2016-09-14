/*:
 ![Make School Banner](./swift_banner.png)
 # Protocols
 
 So far we've learned about classes, and how class inheritance can reduce repeated code by having one class inherit the properties and methods of another. But what if we want multiple classes to have similar functionality without them having to inherit every property and method?
 
 Protocols are a way of doing this: one can think of it as a "contract" that classes can follow. If you're coming from a Java background, protocols in Swift are similar to interfaces in Java. An example: in a social network, `Text`, `Image`s, `Link`s, and other content are all "postable" – that is, they should all have some function that posts the content onto the web. Here, we make a protocol `Postable`:
 */




protocol Postable {
    func post()
}
/*:
 Now, all classes that adopt the protocol Postable must include `post()` as one of their functions:
 */
class Image: Postable {
    func post() {
        // post the image
        print("Image posted!")
    }
}

class Link: Postable {
    let url = "http://xkcd.com"
    
    func post() {
        // post the url
        print("URL \(url) posted!")
    }
}
/*:
- note:
 Unlike class inheritance, classes adopting a protocol only share the function _signature_ that is common to the protocol; the actual implementation of the function is left to the class.
 
 Now you can group `Image`s and `Link`s together, even though they don't share a superclass, because they both conform to `Postable`:
 */
let array: [Postable] = [Image(), Link()]

array[0].post()
array[1].post()
/*:
 To learn more about protocols, you can visit Apple's official documentation [here](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Protocols.html).
 */



/*: 
 ### Challenge
 
 The cool thing about protocols is that you only declare the signature of methods used in a protcol. Protocols never contain body (code) of any methods they declare. So these challenges will be easier than they look. 
 
 - callout(Challenge):
     1. You're building a shooting game with spaceships, helicopters, and motorcycles. Create a protocol so that all of these items can be repaired and destroyed. Think of a good descriptive name for this protocol. Then add two methods one that says the object can be repaired, and another that says the object can be destroyed.
     
     2. The table view is one of the most common UI elements you will work with. It has a very extensive protocol. Imagine you work at Apple and had to write it! The table view needs to know how many cells it will display. Write a protocol called something like tableViewDelegate. Give it a method with a name something numberOfCells. This method should return an Int. 
     
     3. The tableViews can be divided into sections. We need another method that returns the number of sections in a tableview. This method must also return an Int.
     
     4. The Postable protocol above is great but you want to add some new methods. Imagine you are making an Twitter clone. You need a methad that takes a String  as a parameter.
     
     5. Your Twitter app is working well. Now you want to search. Add a method to the protocol that takes a search string as a parameter and returns an array of strings.
 
 */
// Write your challenge code here:







/*: 
 ### Answer
 */
/*
// 1
protocol Destroyable {
    func repair()
    func destroy()
}

protocol TableViewDataSource {
    func numberOfCells() -> Int     // 2
    func numberOfSections() -> Int  // 3
}


protocol Postable {
    func postText(text: String)               // 4
    func search(search: String) -> [String]   // 5
}
*/



/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents)
*/
