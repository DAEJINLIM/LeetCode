class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var lastIndex = t.startIndex

        for char in s {
            guard let currentIndex = t[lastIndex...].firstIndex(of: char) else {
                return false
            }

            lastIndex = t.index(after: currentIndex)
        }

        return true
    }
}
