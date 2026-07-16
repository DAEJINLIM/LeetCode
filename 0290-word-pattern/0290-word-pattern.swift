class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let words = s.split(separator: " ").map { String($0) }

        if pattern.count != words.count { return false }

        var dicP = [Character: String]()
        var dicWords = [String: Character]()

        for (p, w) in zip(pattern, words) {
            if let value1 = dicP[p] {
                if value1 != w {
                    return false
                }
            } else {
                dicP[p] = w
            }

            if let value2 = dicWords[w] {
                if value2 != p {
                    return false
                }
            } else {
                dicWords[w] = p
            }
        }
        
        return true
    }
}