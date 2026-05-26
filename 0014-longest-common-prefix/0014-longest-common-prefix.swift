class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        guard let first = strs.first, !first.isEmpty else {
            return ""
        }

        for i in 1...first.count {
            
            if strs.filter { $0.prefix(i) == first.prefix(i) }.count == strs.count {
                continue
            } else {
                return String(first.prefix(i - 1))
            }
        }

        return first
    }
}