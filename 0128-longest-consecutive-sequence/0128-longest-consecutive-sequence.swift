class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var result = 0 
        var arr = Set(nums) 

        for i in arr {
            if !arr.contains(i-1) {
                var count = 1
                var next = i + 1
                while arr.contains(next) {
                    count += 1
                    next += 1
                }
                result = max(result, count)
            }
        }
        return result
    }
}