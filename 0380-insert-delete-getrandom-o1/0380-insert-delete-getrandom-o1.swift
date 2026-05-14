
class RandomizedSet {
    var arr = [Int]()

    init() {
    }
    
    func insert(_ val: Int) -> Bool {
        if arr.contains(val) {
            return false
        } else {
            arr.append(val)
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        if arr.contains(val) {
            arr.removeAll { $0 == val }
            return true
        } else {
            return false
        }
    }
    
    func getRandom() -> Int {
        return arr.randomElement()!
    }
}