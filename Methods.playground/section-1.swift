// Playground for Methods section

// Instance Methods

class CounterTakeOne {
    var count = 0
    func increment() {
        count++
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
var counter = CounterTakeOne()
counter.increment()
counter.incrementBy(5)
counter.reset()

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}
var counterTwo = Counter()
counterTwo.incrementBy(5, numberOfTimes: 3)

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}
var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOfX(1.0) {
    println("This point is to the right of the line where x == 1.0")
}

struct PointTakeTwo {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var someOtherPoint = PointTakeTwo(x: 1.0, y: 1.0)
someOtherPoint.moveByX(2.0, y: 3.0)
println("The point is now at (\(someOtherPoint.x), \(someOtherPoint.y))")

struct PointTakeThree {
    var x = 0.0, y = 0.0
    mutating func moveBy(deltaX: Double, y deltaY: Double) {
        self = PointTakeThree(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}
var ovenLight = TriStateSwitch.Low
ovenLight.next()
ovenLight.next()