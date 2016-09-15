/*:
 ![Make School Banner](./swift_banner.png)
 # Initializers
 In Swift, there can be many ways to initialize a class. In this tutorial, we will cover _designated_, _convenience_, _required_, and _failable_ initializers. When you're just starting out, you probably won't have a need to use many of these, but as your classes become larger and more complex, using a specialized initializer can help cut down the amount of code you have to write overall.
 */
/*:
 ## Designated Initializers
 Let's start with designated initializers. Designated initializers are the primary initializer for class. In fact, every class must have at least one designated initializer. At the end of the designated initializer, all (non-optional) properties must have been initialized. These should look pretty familiar, as you've seen them before:
 */
class Human {
    // weight in pounds
    var pounds : Double
    
    init(pounds : Double) {
        self.pounds = pounds
    }
    
    // weight in kilo grams
    init(kgs : Double) {
        self.pounds = kgs * 2.2046
    }
}

let mike = Human(pounds: 150)
let john = Human(kgs: 60)

mike.pounds
john.pounds
/*:
 By creating the second designated initializer, we are able to make it easier for a person who is more familiar with kilograms to use the class. In most situations, you will probably only have one designated initializer. But this serves to demonstrate that it's possible to have many.
 
 What if we subclass `Human`? Can we still use the initializers?
 */
class SuperHuman: Human {
    // Some super human
}

let hero = SuperHuman(kgs: 100)
let superhero = SuperHuman(pounds: 250)
/*:
 Even though we haven't written the initializers in `SuperHuman`, it inherited them from `Human`.
 
 What if we want to subclass `Human` but want to add more parameters to the initializers?
 */
class AmazingHuman: Human {
    var name : String
    
    init(name: String, pounds: Double) {
        self.name = name
        super.init(pounds: pounds)
    }
    
    init(name: String, kgs: Double) {
        self.name = name
        super.init(kgs: kgs)
    }
}
/*:
 Notice how we are assigning `self.name = name` before calling `super.init()`. This is because Swift will give you an error if you call `super.init()` before assigning all the properties in the class that are not optional.
 
 Try to switch
 
    self.name = name
    super.init(kgs: kgs)
 to
 
    super.init(kgs: kgs)
    self.name = name
 
 and see what Swift will tell you.
 
 __Make sure you undo this last edit before continuing__.
 */
/*:
 ## Optionals and Initializers
 Let's see how optional properties interact with initializers. In this case, `otherTalent` is an optional property.
 */
class CoolHuman: Human {
    var talent : String
    var otherTalent : String?
    
    init(talent : String, otherTalent : String, pounds : Double) {
        // non-optionals must be set before calling super.init
        self.talent = talent
        
        super.init(pounds: pounds)
        
        // optionals can be set after calling super.init
        self.otherTalent = otherTalent
    }
}

let cool = CoolHuman(talent: "just cool", otherTalent: "more talent", pounds: 0)
/*:
 We still had to assign `talent` before calling `super.init` since it's a non-optional. However, since `otherTalent` is an optional, we were able to assign it after calling `super.init`.
 
 - experiment:
 Try commenting out `self.otherTalent = otherTalent`. What happens? Actually, in this case, the compiler doesn't complain that `otherTalent` is never initialized, because it's an optional. So it will just be initialized with the value `nil` instead.
 */
/*:
 ## Convenience Initializers
 Often times, particularly if your class has many properties, the users of your class won't want to provide values for every single one of the class's properties when they create a new instance. Often, they'll want to provide values for just a few properties, and are okay with the rest of the properties having default values. You can provide this functionality by creating convenience initializers.
 */
enum MilkFat {
    case Skim, OnePercent, TwoPercent, Whole
}

enum MilkFlavor {
    case None, Chocolate, Strawberry
}

class Milk {
    let flavor: MilkFlavor
    let fat: MilkFat
    
    // designated initializer
    init(flavor: MilkFlavor, fat: MilkFat) {
        self.flavor = flavor
        self.fat = fat
    }
    
    // convenience initializer
    convenience init(flavor: MilkFlavor) {
        self.init(flavor: flavor, fat: .TwoPercent)
    }
    
    // convenience initializer
    convenience init(fat: MilkFat) {
        self.init(flavor: .None, fat: fat)
    }
    
    // convenience initializer
    convenience init() {
        self.init(flavor: .None)
    }
}
/*:
Because of the provided convenience initializers, someone using the `Milk` class can construct an instance of milk without providing any parameters.
*/
let defaultMilk = Milk()
defaultMilk.flavor
defaultMilk.fat
/*:
 Notice that the default values of `None` and `TwoPercent` were chosen. Also notice that during the initialization sequence, two convenience initializers and the designated initializer were called. The sequence went:
    
    convenience init() -> convenience init(flavor) -> designated init(flavor, milkfat)
 
 So convenience initializers can call each other, but they must end by calling a designated initializer. Convenience initializers can only call other initializers within the same class. That is to say, they _cannot_ call superclass initializers.
 */
/*:
 ## Required Initializers
 Add the word `required` before an initializer if you want every subclass to implement it.
 */
class Fox {
    var age : Int
    
    required init(age : Int) {
        self.age = age
    }
}

class AmazingFox: Fox {
    // We would get an error if we didn't add this required initializer
    required init(age: Int) {
        super.init(age: age)
    }
}
/*:
 Every subclass of `Fox` must implement `required init(age : Int)`
 */
/*:
 ## Failable Initializers
 Failable initializers are special in that they can actually fail to create a new instance. You can use these to set requirements for the parameters passed into an initializer. If the parameters don't meet the requirements, then it will fail to create a new instance. You can tell if a initializer is failable by the question mark `?` after `init`.
 */
class Cow {
    var age: Int?
    
    init?(age: Int) {
        if age < 0 {
            return nil
        }
        
        self.age = age
    }
}

let niceCow = Cow(age: 20)
let oddCow = Cow(age: -5)

niceCow
oddCow
/*:
 Notice how `oddCow` is `nil` because the passed in age is less than zero.
 
 Note that a Failable initializer returns an optional value; therefore, both `niceCow` and `oddCow` are optional values. You can check this by holding down the "option" key on your keyboard and clicking on `niceCow` or `oddCow` above.
 */
/*:
 ## Struct Initialization
 All the initializers covered here apply to both classes and structs. Huzzah!
 
 For more details on what we covered in this tutorial, please visit [Apple's initialization guide.](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html)
 */






/*: 
 
 ### Challenge
 
 Use the concepts covered in this section to test your knowledge and expand your skills.
 
 - callout(Challenge):
 Racing games are hot on the app store so we better make one fast! You will have all kinds vehicles in your game that will share some features. Better create a `Car` class. A car should have properties for `speed`, `fuel`, and `color`. (Speed: String, fuel: Int, color: String)
 
     Next create a subclass for each of the vehicle types listed below. These vehicles will all have speed, fuel and color since they inherit these from `Car`. They will also have values that are set when they are initialized.
     
         a. `RaceCar` - Race cars are always fast
         b. `TowTruck` - Tow trucks are always slow
         c. `DeliveryTruck` - Delivery trucks are slow and brown.
     
     Use initializers to make sure that each of the subclasses get the proper initial values!
     
     Make sure to determine what kinds of values should be initialized in the `Car` superclass. Then, determine the different characteristics unique to each type of vehicle. Determine what kinds of instantiation could be applied to each variable. 
 
    Create a few more vehicles of your choosing! For example, an ambulance could have a `sirenOn` variable that could be instantiated to `false` with a convenience initializer. Make sure to use at least 3 convenience, 2 required, and 2 failable instantiations.
 */
// Write your challenge code here:








/*: 
 ### Answer
 */
/*
class Car {
    var speed: String!
    var fuel = 100
    var color: String!
}

class RaceCar: Car {
    init(color: String) {
        super.init()
        self.color = color
        self.speed = "Fast"
    }
}

class TowTruck: Car {
    init(color: String) {
        super.init()
        self.color = color
        self.speed = "Slow"
    }
}

class DeliveryTruck: Car {
    override init() {
        super.init()
        self.color = "Brown"
        self.speed = "Slow"
    }
}
*/


/*:
[Previous](@previous) | [Table of Contents](P00-Table-of-Contents) | [Next](@next)
*/
