protocol Container {
    associatedtype Item
    var items: [Item] { get }
    func add(_ item: Item)
    func remove(_ item: Item) -> Item?
}

struct Stack<Element>: Container {
    typealias Item = Element
    var items = [Item]()
    
    mutating func add(_ item: Item) {
        items.append(item)
    }
    
    mutating func remove(_ item: Item) -> Item? {
        guard !items.isEmpty else { return nil }
        return items.removeLast()
    }
}

var stack = Stack<Int>()
stack.add(1)
stack.add(2)
stack.add(3)
stack.remove(2) // 2
stack.remove(4) // nil
