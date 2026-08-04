class MinStack {
    var stack: [Int]
    var minStack: [Int]
    
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ value: Int) {
        stack.append(value)
        if let last = minStack.last {
            minStack.append(min(last, value))
        } else {
            minStack.append(value)
        }
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
