/*:
 ![Make School Banner](./swift_banner.png)
# Static Properties
 
Sometimes you will want one of your class's properties to have a shared value between all instances of that class.
*/
class Student {
    var numStudents = 0
    let name: String
    
    init(name: String) {
        self.name = name
        self.numStudents += 1
    }
}
/*:
 Here, we want `numStudents` to increment by 1 each time a new Student is initialized. But, you'll notice that because there's a `numStudents` variable initialized for each student, the `numStudents` is 1 for all instances:
 */
let john = Student(name: "John")
john.numStudents
let jessica = Student(name: "Jessica")
jessica.numStudents
/*:
 This is where _static properties_ come in. Inside of a class, you can mark a variable as static, like this:
 
     class Student {
        static var numStudents = 0
     }
     
 Try making this change to the above code in the `Student` class now.
 
 ## Errors!
 
 Don't worry. When you declare something as _static_, it no longer becomes tied to each class _instance_; rather, there is only one variable tied to all instances of the class. So, `self.numStudents` doesn't really make sense, since `numStudents` is tied to the Student class as a whole, not to individual students.
 
 So, we change the `self.numStudents += 1` to:
 
    Student.numStudents += 1
 
 Do the same thing to the statements `john.numStudents` and `jessica.numStudents`. Notice as each student is initialized, the `numStudents` value increases by 1!
 
 */



/*: 
 ### Challenge
 
 Static properties are good for situations where you have one value you wish to share amongst all instances of a class. You can also use static methods for to create "factory methods". Factory methods return a preconfigured instance of a class.
 
 - callout(Challenge):
 
    1. Think back on the `Car` class and it's subclasses from the last page. With static properties you could get a similar result using a only a single class. Factory methods return a preconfigured instance of a class. Factory methods work well as static methods. Recreate the Car class from the last example. A Car should have properties for speed fuel, and color. Add a static method that returns a Ferrari. Ferraris are speed fast, and color red.

    2. Now add function that returns a `AAATowTruck`. These are slow and yellow.

    3. Add a static method that creates and returns a ups truck. These are slow and brown.

    4. You're reusing a lots od strings probably better to use an enum! Create two enums for speed and color. Call them CarSpeed, and CarColor. Change your class and factory methods to use these.
 
*/
// Write your challenge code here:






/*: 
 ### Answer
 */
/*
// Note the changes we made to make use of these enums!
enum CarColor {
    case red, yellow, brown
}

enum CarSpeed {
    case fast, slow, medium
}


// 1
class Car {
    var speed: CarSpeed
    var fuel = 100
    var color: CarColor
    
    init(speed: CarSpeed, color: CarColor) {
        self.speed = speed
        self.color = color
    }
    
    // 2
    static func ferrari() -> Car {
        return Car(speed: .fast, color: .red)
    }
    
    // 3
    static func aaaTowTruck() -> Car {
        return Car(speed: .slow, color: .yellow)
    }
    
    // 4
    static func upsTruck() -> Car {
        return Car(speed: .slow, color: .brown)
    }
    
}
*/
/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
