class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        let sorted = citations.sorted(by: >)

        var h = 0
        for i in 0..<sorted.count {
            if sorted[i] >= i + 1 {
                h = i + 1
            } else {
                break
            }
        }

        return h
    }
}