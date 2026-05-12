class Solution {
    func jump(_ nums: [Int]) -> Int {
        var jumps = 0
        var jumpIndex = 0
        var farthest = 0

        for i in 0..<nums.count-1 {
            farthest = max(farthest, i + nums[i])
            
            if i == jumpIndex {
                jumps += 1
                jumpIndex = farthest
            }
        }
        
        return jumps
    }
}