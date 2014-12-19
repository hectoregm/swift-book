// Playground for Automatic Reference Counting section

class Person {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    var apartment: Apartment?

    deinit {
        println("\(name) being deinitialized")
    }
}

class Apartment {
    let number: Int
    init(number: Int) { self.number = number }
    var tenant: Person?
    deinit {
        println("Apartment #\(number) is being deinitialized")
    }
}


var reference1: Person?
var reference2: Person?
var reference3: Person?
reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

reference1
reference2
reference3

// Strong Reference Cycles Between Class Instances

var john: Person?
var number73: Apartment?
john = Person(name: "John Appleseed")
number73 = Apartment(number: 73)