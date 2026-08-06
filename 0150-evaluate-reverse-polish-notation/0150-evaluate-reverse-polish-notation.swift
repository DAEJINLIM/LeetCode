class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        
        func aAndB() -> (a: Int, b: Int) {
            let b = stack.popLast()!
            let a = stack.popLast()!
            return (a, b)
        }

        for i in tokens {
            if i == "+" {
                let (a, b) = aAndB()
                stack.append(a + b)
            } else if i == "-" {
                let (a, b) = aAndB()
                stack.append(a - b)
            } else if i == "*" {
                let (a, b) = aAndB()
                stack.append(a * b)
            } else if i == "/" {
                let (a, b) = aAndB()
                stack.append(a / b)
            } else {
                stack.append(Int(i)!)
            }
        }

        return stack.first ?? Int(tokens.first!)!
    }
}