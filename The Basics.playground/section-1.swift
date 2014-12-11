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