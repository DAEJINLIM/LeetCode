class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dic = [Int: Int]()

        for (i, n) in nums.enumerated() {
            if let index = dic[n], i - index <= k {
                return true
            }
            dic[n] = i
        }

        return false
    }
}