class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var result = [[Int]]()
        var temp = intervals.first!

        for i in 1..<intervals.count {
            if temp[1] >= intervals[i][0] {
                temp = [temp[0], max(temp[1],intervals[i][1])]
            } else {
                result.append(temp)
                temp = intervals[i]
            }
        }
        result.append(temp)

        return result
    }
}