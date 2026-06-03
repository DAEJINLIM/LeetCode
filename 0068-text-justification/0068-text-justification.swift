class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var result = [String]()
        var line = [String]()
        var charCount = 0

        for word in words {
            if charCount + word.count + line.count <= maxWidth {
                line.append(word)
                charCount += word.count
            } else {
                var index = 0
                for _ in 0..<(maxWidth -  charCount) {
                    line[index] += " "
                    index += 1
                    index %= max(line.count - 1, 1)
                }
                result.append(line.joined())
                line = [word]
                charCount = word.count
            }
        }

        let last = line.joined(separator: " ")
        result.append(last + String(repeating: " ", count: maxWidth - last.count))

        return result
    }
}