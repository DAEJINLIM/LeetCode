class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dic = [Character: Int]()
        
        for c in magazine {
            dic[c, default: 0] += 1 
        }

        for c in ransomNote {
            if let _ = dic[c] {
                dic[c]! -= 1
                if dic[c]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }

        return true
    }
}