import Foundation

public class KCStack<T> {
    var items: [T] = []
    func pop() -> T? {
        let first = items.first
        if first != nil {
            items.remove(at: 0)
        }
        return first
    }
    
    func push(item: T) {
        items.insert(item, at: 0)
    }
    
}
