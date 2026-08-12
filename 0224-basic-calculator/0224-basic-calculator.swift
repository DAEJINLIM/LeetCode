class Solution {
    func calculate(_ s: String) -> Int {
        var result = 0
        var num = 0
        var sign = 1
        var stack = [Int]()
        
        for char in s {
            if let n = Int(String(char)) {
                num = num * 10 + n
                
            } else if char == "+" {
                result += num * sign
                num = 0
                sign = 1
                
            } else if char == "-" {
                result += num * sign
                num = 0
                sign = -1
                
            } else if char == "(" {
                stack.append(result)
                stack.append(sign)
                
                result = 0
                sign = 1
                
            } else if char == ")" {
                result += num * sign
                num = 0
                
                let previousSign = stack.removeLast()
                let previousResult = stack.removeLast()
                
                result = previousResult + previousSign * result
            }
        }
        
        result += num * sign
        
        return result
    }
}
