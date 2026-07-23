class Solution {
    func isHappy(_ n: Int) -> Bool {
        var nums = Set<Int>()
        var num = n
        while true {
            var k = 0
            for i in String(num) {
                k += Int(String(i))! * Int(String(i))!
            }

            if nums.contains(k) {
                return false
            } else {
                nums.insert(k)
                num = k
            }

            if num == 1 {
                return true
            }
        }
    }
}