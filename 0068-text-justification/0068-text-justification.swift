class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var result = [String]()
        var text = [String]()

        for word in words {
            let reduce = text.map { $0.count }.reduce(0, +)

            if reduce + word.count + text.count <= maxWidth {
                text.append(word)
            } else {
                var index = 0
                for _ in 0..<(maxWidth -  reduce) {
                    text[index] += " "
                    index += 1
                    index %= max(text.count - 1, 1)
                }
                result.append(text.joined())
                text = [word]
            }
            print(text)
        }

        let last = text.joined(separator: " ")
        result.append(last + String(repeating: " ", count: maxWidth - last.count))

        return result
    }
}