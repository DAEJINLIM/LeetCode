class RandomizedSet {
    var arr = [Int]()
    var dic = [Int: Int]()

    init() {
    }
    
    func insert(_ val: Int) -> Bool {
        if let _ = dic[val] {
            return false
        } else {
            dic[val] = arr.count
            arr.append(val)
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if let index = dic[val] {
            let last = arr.last!

            arr[index] = last
            dic[last] = index

            arr.removeLast()
            dic.removeValue(forKey: val)

            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        return arr.randomElement()!
    }
}
