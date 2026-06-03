class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.filter { $0.isLetter || $0.isNumber }.map { $0.lowercased() }
        return s.prefix(s.count/2) == ArraySlice(s.suffix(s.count/2).reversed()) ? true : false
    }
}