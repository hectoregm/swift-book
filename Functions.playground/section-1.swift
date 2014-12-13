// Playground for Functions section

// Defining and Calling Functions

func sayHello(personaName: String) -> String {
    let greeting = "Hello, " + personaName + "!"
    return greeting
}
println(sayHello("Anna"))
println(sayHello("Bryan"))

func sayHelloAgain(personName: String) -> String {
    return "Hello again, " + personName + "!"
}
println(sayHelloAgain("Anna"))

// Function Parameters and Return Values

func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}
println(halfOpenRangeLength(1, 10))

func sayHelloWorld() -> String {
    return "Hello, world"
}
println(sayHelloWorld())

func sayGoodbye(personName: String) {
    println("Goodbye, \(personName)!")
}
sayGoodbye("Dave")

func printAndCount(stringToPrint: String) -> Int {
    println(stringToPrint)
    return countElements(stringToPrint)
}

func printWithoutCounting(stringToPrint: String) {
    printAndCount(stringToPrint)
}
printAndCount("hello, world")
printWithoutCounting("hello, world")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
if let bounds = minMax([8,-6,2,109,3,71]) {
    println("min is \(bounds.min) and max is \(bounds.max)")
}

// Function Parameter Names

func someFunction(externalParameterName localParameterName: Int) {
    
}

func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}
join(string: "hello", toString: "world", withJoiner: ", ")

func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    
    return false
}
let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")

func joinAgain(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}
joinAgain(string: "hello", toString: "world", withJoiner: "-")
joinAgain(string: "hello", toString: "world")

func joinExt(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
joinExt("hello", "world", joiner: "-")

func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1,2,3,4,5)
arithmeticMean(3,8.25,18.75)

func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - countElements(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    return string
}
let originalString = "hello"
let paddedString = alignRight(originalString, 10, "-")

func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")