class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let h = Array(haystack)
        let n = Array(needle)

        if n.isEmpty { return 0 }
        if h.count < n.count { return -1 }
        
        for i in 0...(h.count - n.count) {
            var found = true
            for j in 0..<n.count {
                if h[i + j] != n[j] {
                    found = false
                    break
                }
            }
            if found { return i }
        }

        return -1
    }
}
