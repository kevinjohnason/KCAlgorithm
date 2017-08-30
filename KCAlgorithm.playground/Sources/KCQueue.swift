import Foundation

public class KCQueue<T> {
    var items: [T] = []
    
    func enqueue(value: T) {
        items.insert(value, at: 0)
    }
    
    func dequeue() -> T?{
        let last = items.last
        if last != nil{
            items.remove(at: items.count - 1)
        }
        return last
    }
    
    func peek() -> T? {
        return items.last
    }
    
}
