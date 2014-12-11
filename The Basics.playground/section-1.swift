// Playground of The Basics section

// Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
//languageName = "Swift++" Error

println(friendlyWelcome)
println("This is a string")

println("The current value of friendlyWelcome is \(friendlyWelcome)")

// Comments - Meta :P


// Semicolons
let cat =  "🐱"; println(cat)

// Integers

let minValue = UInt8.min
let maxValue = UInt8.max

// Floating-Point Numbers

// Type Safety and Type Inference

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

// Numerical Literals
10212 // Decimal
0b10  // Binary
0o70  // Octal
0xFF  // Hexadecimal


let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

1.25e2 // 1.25 x 10^2
1.25e-2 // 1.25 x 10^-2

0xFp2 // 15 x 2^2
0xFp-2 // 15 x 2^-2

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


// Numeric Type Conversion

// let cannotBeNegative: UInt8 = -1
// let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi2)

// Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min


// Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    println("Mmm, tasty turnips!")
} else {
    println("Eww, turnips are horrible.")
}

let i = 1
if i == 1 {
    // valid
}


// Tuples
let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
println("The satus code is \(statusCode)")
println("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
println("The status code is \(justTheStatusCode)")

println("The status code is \(http404Error.0)")
println("The status message is \(http404Error.1)")

let http202Status = (statusCode: 200, description: "OK")
println("The status code is \(http202Status.statusCode)")
println("The status message is \(http202Status.description)")


// Optionals

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveryAnswer: String?
surveryAnswer

if convertedNumber != nil {
    println("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    println("convertedNumber has an integer value of \(convertedNumber!).")
}

// Optional Binding
if let actualNumber = possibleNumber.toInt() {
    println("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    println("\'\(possibleNumber)\' could not be converted to an integer")
}

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark

if assumedString != nil {
    println(assumedString)
}

if let definiteString = assumedString {
    println(definiteString)
}

// Assertions
let age = -3
//assert(age >= 0, "A person's age cannot be less than zero") error!!