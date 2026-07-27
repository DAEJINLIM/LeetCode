class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }

        var result = [String]()
        var start = nums.first!

        for i in 1...nums.count {
            if i == nums.count || nums[i] != nums[i - 1] + 1 {
                if start == nums[i - 1] {
                    result.append("\(start)")
                } else {
                    result.append("\(start)->\(nums[i - 1])")
                }

                if i < nums.count {
                    start = nums[i]
                }
            }
        }

        return result
    }
}