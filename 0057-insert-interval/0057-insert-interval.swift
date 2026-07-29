class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var new = newInterval
        var i = 0

        while i < intervals.count && intervals[i][1] < new[0] {
            result.append(intervals[i])
            i += 1
        }

        while i < intervals.count && intervals[i][0] <= new[1] {
            new[0] = min(new[0], intervals[i][0])
            new[1] = max(new[1], intervals[i][1])
            i += 1
        }
        result.append(new)

        while i < intervals.count {
            result.append(intervals[i])
            i += 1
        }

        return result
    }
}