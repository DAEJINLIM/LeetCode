class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first else { return "" }

        var prefix = ""

        for i in 0..<first.count {
            let index = first.index(first.startIndex, offsetBy: i)
            let char = first[index]

            for str in strs {
                if i >= str.count {
                    return prefix
                }

                let strIndex = str.index(str.startIndex, offsetBy: i)

                if str[strIndex] != char {
                    return prefix
                }
            }

            prefix.append(char)
        }

        return prefix
    }
}