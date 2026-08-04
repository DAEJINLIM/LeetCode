class MinStack {
    var stack: [Int]
    var minStack: [Int]
    
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ value: Int) {
        stack.append(value)
        minStack.append(min(value, minStack.last ?? value))
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        stack.last!
    }
    
    func getMin() -> Int {
        minStack.last!
    }
}
