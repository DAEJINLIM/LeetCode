class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var arr = points.sorted { $0[1] < $1[1] }
        var count = 1
        var lastPoint = arr[0][1]

        for i in 1..<arr.count {
            if lastPoint >= arr[i][0] {
                lastPoint = min(arr[i][1], lastPoint)
            } else {
                count += 1
                lastPoint = arr[i][1]
            }
        }

        return count
    }
}
