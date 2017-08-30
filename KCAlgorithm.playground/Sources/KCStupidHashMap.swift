import Foundation

public class KCStupidHashMap {
    var items: [Int]
    public init() {
        items = Array<Int>(repeating: -1, count:100)
    }
    public subscript(index: Int) -> Int? {
        get {
            if let index = getIndex(for: index) {
                return items[index]
            }
            return -1
        }
        set(newValue) {
            if let index = getIndex(for: index) {
                items[index] = newValue ?? -1
            }
        }
    }
    func set(value:Int, for key: Int) {
        if let index = getIndex(for: key) {
            items[index] = value
        }
    }
    
    func getValue(for key: Int) -> Int? {
        if let index = getIndex(for: key) {
            return items[index]
        }
        return nil
    }
    
    func getIndex(for key: Int) -> Int? {
        return key % items.count
    }
    
}
