import Foundation

public class Node {
    var left: Node?
    var right: Node?
    var value: Int
    
    init(_ value: Int){
        self.value = value
    }
}

public class KCTree {
    var head: Node?
    public init() {
        buildNode()
    }
    
    func buildNode(){
        head = Node(1)
        head?.left = Node(2)
        head?.right = Node(3)
        head?.left?.left = Node(4)
        head?.left?.right = Node(5)
    }
    
    func bft() {
        let queue: KCQueue<Node> = KCQueue<Node>()
        bft(head!,queue: queue)
        while(queue.peek() != nil ){
            let node = queue.dequeue()!
            bft(node, queue: queue)
        }
    }
    
    func bft(_ node: Node, queue: KCQueue<Node> ) {
        print(node.value)
        if let left = node.left {
            queue.enqueue(value: left)
        }
        if let right = node.right {
            queue.enqueue(value: right)
        }
    }
    
    public func dft() {
        dftInOrder(head!)
    }
    
    func dftPreorder(_ node: Node) {
        print(node.value)
        if let left = node.left {
            dftPreorder(left)
        }
        if let right = node.right {
            dftPreorder(right)
        }
    }
    
    func dftPostOrder(_ node: Node) {
        if let left = node.left {
            dftPostOrder(left)
        }
        if let right = node.right {
            dftPostOrder(right)
        }
        print(node.value)
    }
    
    func dftInOrder(_ node: Node) {
        if let left = node.left {
            dftInOrder(left)
        }
        print(node.value)
        if let right = node.right {
            dftInOrder(right)
        }
    }
    
}
