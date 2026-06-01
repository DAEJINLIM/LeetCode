class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var arr = haystack.replacingOccurrences(of: needle, with: "@")
        return arr.map { String($0) }.firstIndex{ $0 == "@" } ?? -1
    }
}
