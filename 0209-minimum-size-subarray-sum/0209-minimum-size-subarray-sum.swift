class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var l = 0
        var sum = 0
        var result = 0

        for r in 0..<nums.count {
            sum += nums[r]

            while sum >= target {
                if result == 0 {
                    result = r - l + 1
                } else {
                    result = min(result, r - l + 1)
                }
                sum -= nums[l]
                l += 1
            }
        }
        
        return result
    }
}