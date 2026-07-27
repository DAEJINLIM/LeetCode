class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard nums.count != 0 else { return [] }
        guard nums.count != 1 else { return [String(nums.first!)] }
        var result = [String]()
        var startNum = nums.first!
        var lastNum = nums.first!

        for i in 1..<nums.count {
            if lastNum + 1 != nums[i] {
                if startNum == lastNum {
                    result.append("\(lastNum)")
                } else {
                    result.append("\(startNum)->\(lastNum)")
                }
                startNum = nums[i]
            }
            lastNum = nums[i]

            if i == nums.count-1 {
                if startNum == lastNum {
                    result.append("\(lastNum)")
                } else {
                    result.append("\(startNum)->\(lastNum)")
                }
            }
        }

        return result
    }
}