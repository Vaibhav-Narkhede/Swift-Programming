struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("A")
stackOfStrings.push("B")
stackOfStrings.push("C")
stackOfStrings.push("D")
print(stackOfStrings)
print(stackOfStrings.pop())
print(stackOfStrings.pop())
print(stackOfStrings)
