// Playground for Collection Types section

// Mutability of Collections

// Arrays

var shoppingList: [String] = ["Eggs", "Milk"]

println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    println("The shopping list is empty")
} else {
    println("The shopping list is not empty")
}

shoppingList.append("Flour")

shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"
shoppingList

shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList

shoppingList.insert("Maple Syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)
firstItem = shoppingList[0]

let apples = shoppingList.removeLast()

for item in shoppingList {
    println(item)
}

for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1): \(value)")
}

var someInts = [Int]()
println("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)
someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles

// Dictionaries


