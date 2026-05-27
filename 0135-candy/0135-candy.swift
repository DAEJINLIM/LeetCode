class Solution {
    func candy(_ ratings: [Int]) -> Int {
        let count = ratings.count
        var arr = Array(repeating: 1, count: count)

        for i in 1..<count {
            if ratings[i-1] < ratings[i] {
                arr[i] = arr[i-1] + 1
            }
        }

        for i in stride(from: count - 2, through: 0, by: -1) {
            if ratings[i+1] < ratings[i] {
                arr[i] = max(arr[i], arr[i+1] + 1)
            }
        }

        return arr.reduce(0, +)
    }
}

