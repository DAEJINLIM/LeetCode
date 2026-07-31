class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var arr = points.sorted { $0[1] < $1[1] }
        var count = 1
        var lastPoint = arr.first!

        for i in 1..<arr.count {
            if lastPoint[1] <= arr[i][1] && lastPoint[1] >= arr[i][0] {
                lastPoint[0] = max(arr[i][0], lastPoint[0])
                lastPoint[1] = min(arr[i][1], lastPoint[1])
            } else {
                count += 1
                lastPoint = arr[i]
            }
        }

        return count
    }
}
