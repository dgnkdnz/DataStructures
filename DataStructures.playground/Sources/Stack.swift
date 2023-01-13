import Foundation

/**
 
 - A stack is a LIFO, last-in first-out, data structure.
 - Despite being so simple, the stack is a key data structure for many problems.
 - The only two essential operations for the stack are the push method for adding elements and the pop method for removing elements.
 
 **/

public struct Stack<Value> {
    private var items: [Value] = []
    
    public init() {}
    
    public mutating func push(_ item: Value) {
        items.append(item)
    }
    
    @discardableResult
    public mutating func pop() -> Value? {
        items.popLast()
    }
}

extension Stack: CustomDebugStringConvertible {
    public var debugDescription: String {
    """
    ----top----
    \(items.map { "\($0)" }.reversed().joined(separator: "\n"))
    -----------
    """
    }
}

public func stackExample() {
    run(description: "1th example of Stack") {
        var stack = Stack<Int>()
        stack.push(10)
        stack.push(20)
        stack.push(30)
        stack.push(40)
        stack.push(50)
        print(stack)
    }
}

public func stackExample2() {
    run(description: "2th example of Stack") {
        var stack = Stack<Int>()
        stack.push(10)
        stack.push(20)
        stack.push(30)
        stack.push(40)
        stack.push(50)
        print(stack)
        
        if let poppedItem = stack.pop() {
            print("Popped: \(poppedItem)")
        }
    }
}
