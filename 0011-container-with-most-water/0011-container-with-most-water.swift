class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        var result = 0

        while l < r {
            let area = (r - l) * min(height[l], height[r])
            result = max(result, area)

            if height[l] < height[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return result
    }
}   