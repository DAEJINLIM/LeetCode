class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var arr = Set<[Int]>()

        for i in 0..<nums.count {
            var l = i + 1
            var r = nums.count - 1

            while l < r {
                let sum = nums[i] + nums[l] + nums[r]
                
                if sum == 0 {
                    arr.insert([nums[i], nums[l], nums[r]])
                    l += 1
                    r -= 1

                } else if sum < 0 {
                    l += 1
                } else {
                    r -= 1
                }
            }
        }
        
        return Array(arr)
    }
}
