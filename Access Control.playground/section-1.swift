// Playground for Access Control

// Access Levels

public class SomePublicClassAgain {}
internal class SomeInternalClassAgain {}
private class SomePrivateClassAgain {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
private func somePrivateFunction() {}

// Custom Types

public class SomePublicClass {
    
    public var somePublicProperty = 0
    
    var someInternalProperty = 0
    
    private func somePrivateMethod() {}
}

class SomeInternalClass {
    var someInternalProperty = 0
    private func somePrivateMethod() {}
}

private class SomePrivateClass {
    var somePrivateProperty = 0
    func somePrivateMethod() {}
}

public enum CompassPoint {
    case North
    case South
    case East
    case West
}

// Subclassing

public class A {
    private func someMethod() {}
}

internal class B: A {
     override internal func someMethod() {
        super.someMethod()
    }
}

private var privateInstance = SomePrivateClass()

struct TrackedString {
    private(set) var numberOfEdits = 0
    var value: String = "" {
        didSet {
            numberOfEdits++
        }
    }
}
var stringToEdit = TrackedString()
stringToEdit.value = "This string will be tracked"
stringToEdit.value += " This edit will increment numberOfEdits."
stringToEdit.value += " So will this one."
println("The number of edits is \(stringToEdit.numberOfEdits)")

// Initializers

// Protocols
