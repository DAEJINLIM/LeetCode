class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var result = [String]()
        var text = [String]()
        var charCount = 0

        for word in words {
            if charCount + word.count + text.count <= maxWidth {
                text.append(word)
                charCount += word.count
            } else {
                var index = 0
                for _ in 0..<(maxWidth -  charCount) {
                    text[index] += " "
                    index += 1
                    index %= max(text.count - 1, 1)
                }
                result.append(text.joined())
                text = [word]
                charCount = word.count
            }
        }

        let last = text.joined(separator: " ")
        result.append(last + String(repeating: " ", count: maxWidth - last.count))

        return result
    }
}