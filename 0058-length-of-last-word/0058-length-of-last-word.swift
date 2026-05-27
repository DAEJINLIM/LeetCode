class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        return s.map { String($0) }.split(separator: " ").last!.count
    }
}