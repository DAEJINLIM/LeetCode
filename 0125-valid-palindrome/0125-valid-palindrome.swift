class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.filter { $0.isLetter || $0.isNumber }.map { $0.lowercased() }
        var left = 0
        var right = s.count - 1

        while left < right {
            if s[left] != s[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}