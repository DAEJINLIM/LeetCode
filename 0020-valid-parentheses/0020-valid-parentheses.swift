class Solution {
    func isValid(_ s: String) -> Bool {
        if s.count % 2 == 1 { return false }
        let map: [Character: Character] = [
            ")": "(",
            "}": "{",
            "]": "["
        ]
        var stack = [Character]()

        for i in s {
            if let open = map[i] {
                guard let last = stack.popLast(), last == open else {
                    return false
                }
            } else {
                stack.append(i)
            }
        }

        return stack.isEmpty
     }
}
